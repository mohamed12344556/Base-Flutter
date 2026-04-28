import 'dart:async';

import 'dart:developer' as developer;

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';

import '../security/security_service.dart';

import '../../features/auth/data/models/auth_request.dart';

import '../core.dart';

import '../services/guest_mode_service.dart';

import '../services/user_service.dart';

import 'api_constants.dart';

import 'api_service.dart';

import 'token_manager.dart';
import 'package:base_flutter/core/logger/base_logger.dart';

/// Handles automatic token injection and transparent token refresh on 401.

///

/// **Deduplication**: Uses a [Completer<bool>] to ensure that concurrent 401

/// responses only trigger a single refresh call. Subsequent 401s wait for the

/// in-flight refresh to resolve before deciding whether to retry or fail.

class AuthInterceptor extends Interceptor {
  final bool shouldRefresh;

  /// Non-null while a token refresh is in flight.

  /// Other 401 handlers queue on this completer instead of starting a new refresh.

  Completer<bool>? _refreshCompleter;

  AuthInterceptor({this.shouldRefresh = true});

  // ---------------------------------------------------------------------------

  // onRequest — attach auth header

  // ---------------------------------------------------------------------------

  @override
  void onRequest(
    RequestOptions options,

    RequestInterceptorHandler handler,
  ) async {
    // Skip auth header entirely for guest mode

    if (GuestModeService.isGuest) {
      return handler.next(options);
    }

    final tokens = await TokenManager.getTokens();

    if (tokens != null) {
      options.headers['Authorization'] = 'Bearer ${tokens.accessToken}';

      // Refresh endpoint also needs the cookie header

      if (_isRefreshEndpoint(options.path)) {
        options.headers['Cookie'] = 'RefreshToken=${tokens.refreshToken}';
      }
    }

    return handler.next(options);
  }

  // ---------------------------------------------------------------------------

  // onError — handle 401 with deduplication

  // ---------------------------------------------------------------------------

  @override
  Future<void> onError(
    DioException err,

    ErrorInterceptorHandler handler,
  ) async {
    BaseLogger.e(
      'Request error: ${err.requestOptions.path} [${err.response?.statusCode}]',
      error: err,
    );

    // Guest mode — pass through

    if (GuestModeService.isGuest) {
      return handler.next(err);
    }

    final is401 = err.response?.statusCode == 401;

    final isRefreshPath = _isRefreshEndpoint(err.requestOptions.path);

    if (!is401 || !shouldRefresh || isRefreshPath) {
      return handler.next(err);
    }

    // Ensure the user actually has tokens — if not, a public endpoint sent 401

    final tokens = await TokenManager.getTokens();

    if (tokens == null) {
      return handler.next(err);
    }

    // --- Deduplication ---

    if (_refreshCompleter != null) {
      // Another request already started a refresh; wait for it

      developer.log(
        'Token refresh already in progress — awaiting...',
        name: 'eol.auth',
      );

      final refreshSucceeded = await _refreshCompleter!.future;

      if (refreshSucceeded) {
        // Retry the original request with the new token

        try {
          final response = await _retryRequest(err.requestOptions);

          return handler.resolve(response);
        } catch (retryError) {
          return handler.next(err);
        }
      } else {
        return handler.next(err);
      }
    }

    // --- Start a fresh refresh ---

    _refreshCompleter = Completer<bool>();

    try {
      developer.log('Starting token refresh...', name: 'eol.auth');

      final response = await _handleTokenRefresh(err.requestOptions);

      _refreshCompleter!.complete(true);

      _refreshCompleter = null;

      return handler.resolve(response);
    } catch (e) {
      developer.log('Token refresh failed: $e', name: 'eol.auth');

      _refreshCompleter!.complete(false);

      _refreshCompleter = null;

      await _handleAuthError();

      return handler.reject(err);
    }
  }

  // ---------------------------------------------------------------------------

  // Token refresh logic

  // ---------------------------------------------------------------------------

  Future<Response<dynamic>> _handleTokenRefresh(
    RequestOptions originalRequest,
  ) async {
    final tokens = await TokenManager.getTokens();

    if (tokens == null) {
      throw const AuthException('No tokens available for refresh');
    }

    final cleanDio = DioFactory.getCleanDio();

    final apiService = ApiService(cleanDio);

    final refreshRequest = AuthRequest.buildRefreshTokenRequest(
      accessToken: tokens.accessToken,

      refreshToken: tokens.refreshToken,
    );

    final authResponse = await apiService.refreshToken(refreshRequest);

    developer.log(
      'Token refresh response: isSuccess=${authResponse.isSuccess}',

      name: 'eol.auth',
    );

    if (authResponse.isSuccess == true && authResponse.data != null) {
      final authData = authResponse.data!;

      final newAccessToken = authData.accessToken;

      final newRefreshToken = authData.refreshToken;

      if (newAccessToken == null ||
          newRefreshToken == null ||
          newAccessToken.isEmpty ||
          newRefreshToken.isEmpty) {
        throw const AuthException('Refresh response contained invalid tokens');
      }

      await TokenManager.saveTokens(
        accessToken: newAccessToken,

        refreshToken: newRefreshToken,
      );

      developer.log('Token refresh: success', name: 'base.auth');

      return _retryRequest(originalRequest, overrideToken: newAccessToken);
    } else {
      throw AuthException(
        'Token refresh failed: ${authResponse.message ?? "unknown error"}',
      );
    }
  }

  /// Retries [originalRequest] with an optional new bearer [overrideToken].

  Future<Response<dynamic>> _retryRequest(
    RequestOptions originalRequest, {

    String? overrideToken,
  }) async {
    if (overrideToken != null) {
      originalRequest.headers['Authorization'] = 'Bearer $overrideToken';
    }

    final retryDio = DioFactory.getCleanDio();

    return retryDio.request<dynamic>(
      originalRequest.path,

      data: originalRequest.data,

      queryParameters: originalRequest.queryParameters,

      options: Options(
        method: originalRequest.method,

        headers: originalRequest.headers,
      ),
    );
  }

  // ---------------------------------------------------------------------------

  // Auth error handling

  // ---------------------------------------------------------------------------

  Future<void> _handleAuthError() async {
    await TokenManager.clearTokens();

    DioFactory.resetDio();

    _redirectToLogin();
  }

  void _redirectToLogin() {
    final context = NavigationService.navigatorKey.currentContext;

    if (context != null) {
      context.showErrorSnackBar('يرجى تسجيل الدخول مرة أخرى');

      Navigator.of(
        context,
      ).pushNamedAndRemoveUntil(AppRoutes.loginView, (route) => false);
    }
  }

  bool _isRefreshEndpoint(String path) {
    return path.contains(ApiConstants.refreshToken);
  }
}

// ---------------------------------------------------------------------------

// Supporting types

// ---------------------------------------------------------------------------

class AuthException implements Exception {
  final String message;

  const AuthException(this.message);

  @override
  String toString() => 'AuthException: $message';
}

class NavigationService {
  /// Delegates to [SecurityService] so the whole app shares one navigator key.
  static GlobalKey<NavigatorState> get navigatorKey =>
      SecurityService.navigatorKey;
}
