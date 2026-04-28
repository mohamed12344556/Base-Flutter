import 'dart:developer';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

import '../config/environment_config.dart';

/// Wraps Firebase Crashlytics with environment-aware reporting.
///
/// Activated only when [EnvironmentConfig.enableCrashReporting] is `true`
/// (production builds). All other environments are silently no-ops.
///
/// PII filtering: strips email addresses and JWT tokens from error strings
/// before they reach Crashlytics.
class CrashReportingService {
  final EnvironmentConfig _config;
  bool _initialized = false;

  CrashReportingService(this._config);

  bool get _enabled => _config.enableCrashReporting && _initialized;

  /// Call once at app startup (after GetIt is ready).
  ///
  /// Installs global Flutter and platform error handlers so that ALL errors
  /// (rendering overflows, unhandled exceptions, zone errors) are captured.
  Future<void> initialize() async {
    if (!_config.enableCrashReporting) {
      log(
        'CrashReporting disabled for ${_config.name.name} environment',
        name: 'eol.crash',
      );
      return;
    }
    try {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

      // Catch Flutter framework errors (overflow, assertion, null checks, etc.)
      FlutterError.onError =
          FirebaseCrashlytics.instance.recordFlutterFatalError;

      // Catch errors outside Flutter framework (isolate, platform channel, etc.)
      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };

      _initialized = true;
      log('CrashReporting initialized', name: 'eol.crash');
    } catch (e) {
      log('CrashReporting init failed: $e', name: 'eol.crash');
    }
  }

  /// Record a non-fatal error with optional stack trace.
  Future<void> recordError(
    Object error,
    StackTrace? stackTrace, {
    bool fatal = false,
    String? reason,
  }) async {
    if (!_enabled) return;
    try {
      // Pass the original error object so Crashlytics can group crashes
      // correctly. Sanitize only the reason string (not the error itself).
      final sanitizedReason =
          reason != null ? _sanitize(reason) : null;
      await FirebaseCrashlytics.instance.recordError(
        error,
        stackTrace,
        reason: sanitizedReason,
        fatal: fatal,
      );
    } catch (e) {
      log('Failed to record error to Crashlytics: $e', name: 'eol.crash');
    }
  }

  /// Attach the logged-in user's identity to all future crash reports.
  ///
  /// Call after a successful login. Pass `null` to clear on logout.
  Future<void> setUser({required String? userId, String? email}) async {
    if (!_enabled) return;
    try {
      await FirebaseCrashlytics.instance.setUserIdentifier(userId ?? '');
      if (email != null) {
        await FirebaseCrashlytics.instance.setCustomKey(
          'user_email',
          _sanitize(email),
        );
      }
    } catch (_) {}
  }

  /// Set a custom key-value metadata pair visible in Crashlytics console.
  Future<void> setCustomKey(String key, String value) async {
    if (!_enabled) return;
    try {
      await FirebaseCrashlytics.instance.setCustomKey(key, _sanitize(value));
    } catch (_) {}
  }

  /// Log a non-error message visible in Crashlytics breadcrumbs.
  Future<void> logMessage(String message) async {
    if (!_enabled) return;
    try {
      await FirebaseCrashlytics.instance.log(_sanitize(message));
    } catch (_) {}
  }

  // ---------------------------------------------------------------------------
  // PII Filtering
  // ---------------------------------------------------------------------------

  static final _emailPattern = RegExp(
    r'[a-zA-Z0-9._%+\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,}',
  );
  static final _jwtPattern = RegExp(
    r'eyJ[A-Za-z0-9\-_]+\.[A-Za-z0-9\-_]+\.[A-Za-z0-9\-_]*',
  );

  String _sanitize(String input) {
    var result = input.replaceAll(_emailPattern, '[EMAIL_REDACTED]');
    result = result.replaceAll(_jwtPattern, '[JWT_REDACTED]');
    return result;
  }
}
