import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../logger/base_logger.dart';

class LoggingInterceptor extends Interceptor {
  LoggingInterceptor({bool enabled = kDebugMode}) : _enabled = enabled;

  final bool _enabled;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_enabled) {
      BaseLogger.logRequest(options);
    }
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    if (_enabled) {
      BaseLogger.logResponse(response);
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (_enabled) {
      BaseLogger.logDioError(err);
    }
    handler.next(err);
  }
}
