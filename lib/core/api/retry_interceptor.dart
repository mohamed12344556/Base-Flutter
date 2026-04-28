import 'dart:async';
import 'dart:developer' as developer;
import 'dart:io' show HttpDate;
import 'dart:math';

import 'package:dio/dio.dart';

/// Policy describing how the [RetryInterceptor] decides to retry a failed
/// request.
///
/// The policy is immutable and safe to share across requests. Per-request
/// overrides are supported through [RequestOptions.extra] — see
/// [RetryInterceptor.extraKey].
class RetryPolicy {
  /// Maximum number of retry attempts after the initial request.
  ///
  /// A value of `3` means up to 4 total network calls (1 original + 3 retries).
  final int maxRetries;

  /// Base delay between retries. Actual delay grows exponentially
  /// (`baseDelay * 2^attempt`) and is jittered by up to ±[jitter].
  final Duration baseDelay;

  /// Upper bound for a single retry delay, before jitter.
  final Duration maxDelay;

  /// Random jitter added to (or subtracted from) each delay to avoid
  /// thundering-herd retries when many clients fail simultaneously.
  final Duration jitter;

  /// HTTP status codes that should trigger a retry.
  ///
  /// Defaults to the transient-error set: 408, 425, 429, 500, 502, 503, 504.
  /// 401 is intentionally EXCLUDED — it is handled by `AuthInterceptor`.
  final Set<int> retryStatusCodes;

  /// HTTP methods that are safe to retry without risking duplicate side
  /// effects. Defaults to the idempotent set: GET, HEAD, OPTIONS, PUT, DELETE.
  ///
  /// POST is excluded by default because most POST endpoints create resources
  /// and a blind retry could duplicate them. Opt in per-request via
  /// [RetryInterceptor.extraKey].
  final Set<String> retryableMethods;

  const RetryPolicy({
    this.maxRetries = 3,
    this.baseDelay = const Duration(milliseconds: 400),
    this.maxDelay = const Duration(seconds: 8),
    this.jitter = const Duration(milliseconds: 250),
    this.retryStatusCodes = const {408, 425, 429, 500, 502, 503, 504},
    this.retryableMethods = const {'GET', 'HEAD', 'OPTIONS', 'PUT', 'DELETE'},
  });

  /// Returns a copy of this policy with the given fields replaced.
  RetryPolicy copyWith({
    int? maxRetries,
    Duration? baseDelay,
    Duration? maxDelay,
    Duration? jitter,
    Set<int>? retryStatusCodes,
    Set<String>? retryableMethods,
  }) {
    return RetryPolicy(
      maxRetries: maxRetries ?? this.maxRetries,
      baseDelay: baseDelay ?? this.baseDelay,
      maxDelay: maxDelay ?? this.maxDelay,
      jitter: jitter ?? this.jitter,
      retryStatusCodes: retryStatusCodes ?? this.retryStatusCodes,
      retryableMethods: retryableMethods ?? this.retryableMethods,
    );
  }
}

/// Transparently retries transient Dio failures with exponential backoff +
/// jitter.
///
/// Retries happen when ALL of the following are true:
///
/// 1. The request has not already consumed its retry budget.
/// 2. The error is a network/timeout error OR the response status code is in
///    [RetryPolicy.retryStatusCodes].
/// 3. The request method is in [RetryPolicy.retryableMethods], OR the request
///    explicitly opted in via `options.extra[RetryInterceptor.extraKey] = true`.
/// 4. The request has not been cancelled.
///
/// If the server returned a `Retry-After` header, the next delay honors it
/// (bounded by [RetryPolicy.maxDelay] * 4 to avoid unbounded waits).
class RetryInterceptor extends Interceptor {
  /// Key used in [RequestOptions.extra] to opt a request in/out of retries
  /// regardless of method (e.g. a POST that is known to be idempotent).
  ///
  /// Usage:
  /// ```dart
  /// dio.post(path, data: body, options: Options(extra: {
  ///   RetryInterceptor.extraKey: true,
  /// }));
  /// ```
  static const String extraKey = 'retryEnabled';

  /// Key used in [RequestOptions.extra] to track the current attempt count.
  static const String _attemptKey = '__retry_attempt';

  final Dio _dio;

  /// The retry policy governing backoff and retry conditions.
  final RetryPolicy policy;
  final Random _random;

  /// [dio] MUST be the same Dio instance that owns this interceptor — retries
  /// are re-dispatched through it so they pass through the other interceptors
  /// (auth, headers, cache) correctly.
  RetryInterceptor({
    required Dio dio,
    this.policy = const RetryPolicy(),
    Random? random,
  }) : _dio = dio,
       _random = random ?? Random();

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final options = err.requestOptions;

    if (!_shouldRetry(err)) {
      return handler.next(err);
    }

    final attempt = (options.extra[_attemptKey] as int?) ?? 0;
    if (attempt >= policy.maxRetries) {
      return handler.next(err);
    }

    final delay = _computeDelay(attempt: attempt, error: err);
    developer.log(
      'Retrying ${options.method} ${options.path} '
      '(attempt ${attempt + 1}/${policy.maxRetries}) in ${delay.inMilliseconds}ms',
      name: 'eol.retry',
    );

    await Future<void>.delayed(delay);

    if (options.cancelToken?.isCancelled ?? false) {
      return handler.next(err);
    }

    options.extra[_attemptKey] = attempt + 1;

    try {
      final response = await _dio.fetch<dynamic>(options);
      return handler.resolve(response);
    } on DioException catch (retryError) {
      return handler.next(retryError);
    }
  }

  bool _shouldRetry(DioException err) {
    if (err.type == DioExceptionType.cancel) return false;

    final options = err.requestOptions;
    final explicitOptIn = options.extra[extraKey];
    if (explicitOptIn == false) return false;

    final method = options.method.toUpperCase();
    final isMethodRetryable =
        explicitOptIn == true || policy.retryableMethods.contains(method);
    if (!isMethodRetryable) return false;

    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return true;
      case DioExceptionType.badResponse:
        final code = err.response?.statusCode;
        return code != null && policy.retryStatusCodes.contains(code);
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
      case DioExceptionType.cancel:
        return false;
    }
  }

  Duration _computeDelay({required int attempt, required DioException error}) {
    final retryAfter = _parseRetryAfter(error.response);
    if (retryAfter != null) {
      final cap = policy.maxDelay * 4;
      return retryAfter > cap ? cap : retryAfter;
    }

    final exp = policy.baseDelay.inMilliseconds * (1 << attempt);
    final capped = min(exp, policy.maxDelay.inMilliseconds);
    final jitterMs = policy.jitter.inMilliseconds;
    final signedJitter = jitterMs == 0
        ? 0
        : _random.nextInt(jitterMs * 2 + 1) - jitterMs;
    final total = max(0, capped + signedJitter);
    return Duration(milliseconds: total);
  }

  /// Parses a `Retry-After` header. Supports both delta-seconds and HTTP-date
  /// formats. Returns `null` if the header is missing or unparseable.
  Duration? _parseRetryAfter(Response<dynamic>? response) {
    final header = response?.headers.value('retry-after');
    if (header == null || header.isEmpty) return null;

    final seconds = int.tryParse(header.trim());
    if (seconds != null) {
      return Duration(seconds: seconds.clamp(0, 3600));
    }

    try {
      final date = HttpDate.parse(header);
      final diff = date.difference(DateTime.now());
      if (diff.isNegative) return Duration.zero;
      return diff;
    } catch (_) {
      return null;
    }
  }
}
