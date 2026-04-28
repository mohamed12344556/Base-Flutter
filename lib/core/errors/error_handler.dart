import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error, [StackTrace? stackTrace]) {
    _report(error, stackTrace);
    // Handle raw I/O network errors (non-Dio)
    if (error is SocketException || error is HttpException) {
      log('Network error: $error', name: 'eol.network');
      return ApiErrorModel(
        type: ApiErrorType.network,
        message: 'error_network',
        rawError: error.toString(),
      );
    }

    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
            type: ApiErrorType.network,
            message: 'error_network',
            statusCode: 408,
            rawError: error.message,
          );

        case DioExceptionType.cancel:
          return ApiErrorModel(
            type: ApiErrorType.unknown,
            message: 'error_unknown',
            statusCode: 499,
            rawError: error.message,
          );

        case DioExceptionType.unknown:
          return ApiErrorModel(
            type: ApiErrorType.network,
            message: 'error_network',
            statusCode: 0,
            rawError: error.message,
          );

        case DioExceptionType.badResponse:
          return _handleStatusCode(
            error.response?.statusCode,
            error.response?.data,
          );

        default:
          return ApiErrorModel(
            type: ApiErrorType.unknown,
            message: 'error_unknown',
            statusCode: 500,
            rawError: error.toString(),
          );
      }
    } else {
      log('Unhandled error type: ${error.runtimeType}', error: error);
      return ApiErrorModel(
        type: ApiErrorType.unknown,
        message: 'error_unknown',
        statusCode: 500,
        rawError: error.toString(),
      );
    }
  }

  static ApiErrorModel _handleStatusCode(int? statusCode, dynamic response) {
    final int code = statusCode ?? 500;

    // Determine type and ARB message key
    ApiErrorType errorType;
    String messageKey;

    // Extract server error code from response body
    final String? serverErrorCode = _extractServerErrorCode(response);

    // Map quiz-specific error codes
    if (serverErrorCode != null) {
      switch (serverErrorCode) {
        case 'QuestionsLockedAfterFirstSubmission':
        case 'HasSubmissions':
        case 'AlreadyInProgress':
        case 'AttemptsExhausted':
        case 'AlreadySubmitted':
          errorType = ApiErrorType.validation;
          messageKey = serverErrorCode;
        case 'EnrollmentRequired':
          errorType = ApiErrorType.auth;
          messageKey = serverErrorCode;
        case 'QuizNotAvailable':
          errorType = ApiErrorType.notFound;
          messageKey = serverErrorCode;
        case 'AttemptWindowClosed':
        case 'AttemptExpired':
          errorType = ApiErrorType.validation;
          messageKey = serverErrorCode;
        default:
          errorType = ApiErrorType.validation;
          messageKey = serverErrorCode;
      }
    } else if (statusCode == 401 || statusCode == 403) {
      errorType = ApiErrorType.auth;
      messageKey = 'error_auth';
    } else if (statusCode == 400 || statusCode == 422) {
      errorType = ApiErrorType.validation;
      messageKey = 'error_validation';
    } else if (statusCode == 404) {
      errorType = ApiErrorType.notFound;
      messageKey = 'error_not_found';
    } else if (statusCode != null && statusCode >= 500 && statusCode < 600) {
      errorType = ApiErrorType.server;
      messageKey = 'error_server';
    } else {
      errorType = ApiErrorType.unknown;
      messageKey = 'error_unknown';
    }

    // Extract field-level validation errors
    Map<String, String>? fieldErrors;
    String? rawError;

    if (response != null) {
      rawError = response.toString();

      if (errorType == ApiErrorType.validation) {
        fieldErrors = _extractFieldErrors(response);
      }
    }

    return ApiErrorModel(
      type: errorType,
      message: messageKey,
      fieldErrors: fieldErrors,
      statusCode: code,
      rawError: rawError,
    );
  }

  /// Extracts server-side error code from response body.
  /// Shape: { "Error": "ErrorCode", "Message": "..." }
  static String? _extractServerErrorCode(dynamic response) {
    if (response is! Map) return null;
    final error = response['Error'];
    if (error is String && error.isNotEmpty) return error;
    return null;
  }

  /// Reports the error to Crashlytics (non-fatal) silently.
  static void _report(dynamic error, StackTrace? stackTrace) {
    if (kReleaseMode || kProfileMode) {
      try {
        FirebaseCrashlytics.instance.recordError(
          error,
          stackTrace ?? StackTrace.current,
          fatal: false,
          printDetails: false,
        );
      } catch (_) {}
    } else {
      // In debug mode just log — no Crashlytics noise
      log('ApiErrorHandler: $error', name: 'eol.error');
    }
  }

  /// Tries to extract field-level errors from common API error response shapes.
  static Map<String, String>? _extractFieldErrors(dynamic response) {
    if (response is! Map) return null;

    final Map<String, String> result = {};

    // Shape: { "errors": { "fieldName": ["message"] } }
    if (response['errors'] is Map) {
      final errors = response['errors'] as Map;
      for (final entry in errors.entries) {
        final value = entry.value;
        if (value is List && value.isNotEmpty) {
          result[entry.key.toString()] = value.first.toString();
        } else if (value is String) {
          result[entry.key.toString()] = value;
        }
      }
    }

    // Shape: { "errors": ["message1", "message2"] }
    if (response['errors'] is List) {
      final errors = response['errors'] as List;
      for (int i = 0; i < errors.length; i++) {
        result['field_$i'] = errors[i].toString();
      }
    }

    return result.isEmpty ? null : result;
  }
}
