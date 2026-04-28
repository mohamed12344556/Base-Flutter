import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../services/crash_reporting_service.dart';
import '../widgets/modern_error_state.dart';
import 'package:base_flutter/core/logger/base_logger.dart';

/// Global error handler that catches all unhandled errors
/// and prevents the red screen of death from showing to users.
///
/// Also forwards errors to [CrashReportingService] (production only).
class ErrorHandler {
  ErrorHandler._();

  /// Try to get CrashReportingService — may not be registered yet during init.
  static CrashReportingService? get _crash {
    try {
      return GetIt.I<CrashReportingService>();
    } catch (_) {
      return null;
    }
  }

  static void init() {
    // Flutter Framework errors (overflow, null widget, etc.)
    FlutterError.onError = (details) {
      BaseLogger.e(
        'Flutter Error: ${details.exception}',
        error: details.exception,
        stackTrace: details.stack,
      );
      _crash?.recordError(
        details.exception,
        details.stack,
        fatal: false,
        reason: 'Flutter framework error',
      );
    };

    // Platform/Isolate errors (unhandled exceptions outside the UI)
    PlatformDispatcher.instance.onError = (error, stack) {
      BaseLogger.e('Platform Error: $error', error: error, stackTrace: stack);
      _crash?.recordError(error, stack, fatal: true, reason: 'Platform error');
      return true;
    };
  }

  /// Replaces the red screen with a user-friendly error UI.
  /// The Retry button triggers a widget rebuild to recover from transient errors.
  static Widget buildErrorWidget(FlutterErrorDetails details) {
    BaseLogger.e(
      'Widget Error: ${details.exception}',
      error: details.exception,
      stackTrace: details.stack,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _RetryableErrorScreen(details: details),
    );
  }
}

class _RetryableErrorScreen extends StatefulWidget {
  const _RetryableErrorScreen({required this.details});

  final FlutterErrorDetails details;

  @override
  State<_RetryableErrorScreen> createState() => _RetryableErrorScreenState();
}

class _RetryableErrorScreenState extends State<_RetryableErrorScreen> {
  int _retryKey = 0;

  void _retry() {
    // Clear the error and force a rebuild — recovers from transient render errors
    FlutterError.resetErrorCount();
    setState(() => _retryKey++);
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: ValueKey(_retryKey),
      child: Scaffold(
        body: ModernErrorState.generic(onButtonPressed: _retry),
      ),
    );
  }
}
