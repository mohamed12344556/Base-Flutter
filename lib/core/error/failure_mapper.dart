import 'package:dio/dio.dart';

import 'failure.dart';

abstract final class FailureMapper {
  static Failure fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.connectionError:
        return const NetworkFailure();
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        if (statusCode == 401 || statusCode == 403) {
          return const UnauthorizedFailure();
        }
        if (statusCode == 404) {
          return const NotFoundFailure();
        }
        if (statusCode == 400 || statusCode == 422) {
          Map<String, String>? fieldErrors;
          if (e.response?.data is Map) {
            final data = e.response!.data as Map<String, dynamic>;
            if (data.containsKey('errors') && data['errors'] is Map) {
              fieldErrors = (data['errors'] as Map).map(
                (key, value) => MapEntry(key.toString(), value.toString()),
              );
            }
          }
          return ValidationFailure(fieldErrors: fieldErrors);
        }
        if (statusCode != null && statusCode >= 500) {
          return ServerFailure(statusCode: statusCode);
        }
        return const UnknownFailure();
      default:
        return UnknownFailure(rawError: e.message);
    }
  }
}
