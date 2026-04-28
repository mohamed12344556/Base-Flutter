import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';

abstract class BaseAuthRepository {
  BaseAuthRepository();

  Future<Either<ApiErrorModel, T>> handleRequest<T>(
    Future<T> Function() request,
  ) async {
    try {
      final response = await request();
      if (_isSuccessResponse(response)) {
        return Right(response);
      }
      return Left(_getErrorFromResponse(response));
    } catch (error) {
      return Left(ApiErrorHandler.handle(error));
    }
  }

  bool _isSuccessResponse(dynamic response) {
    if (response is Map && response.containsKey('success')) {
      return response['success'] == true;
    }
    try {
      final success = (response as dynamic).success;
      return success == true;
    } catch (_) {
      return response?.status == true;
    }
  }

  ApiErrorModel _getErrorFromResponse(dynamic response) {
    try {
      final dynamic resp = response;
      final message = resp.message as String? ?? 'error_server';
      final errors = resp.errors;
      final rawMsg = (errors != null && (errors as List).isNotEmpty)
          ? errors[0].toString()
          : message;
      return ApiErrorModel.fromRawMessage(rawMsg, type: ApiErrorType.server);
    } catch (_) {
      return ApiErrorModel.fromRawMessage(
        'error_server',
        type: ApiErrorType.server,
      );
    }
  }
}
