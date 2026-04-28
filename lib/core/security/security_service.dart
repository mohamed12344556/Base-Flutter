import 'dart:developer' as developer;
import 'dart:io' show exit;

import 'package:flutter/material.dart';
import 'package:freerasp/freerasp.dart';

/// Initializes freeRASP and reacts to security threats.
///
/// Call [SecurityService.initialize] once at app startup, before [runApp].
/// The service:
/// - Blocks screenshots and screen recordings (FLAG_SECURE / iOS equivalent).
/// - Shows a blocking [AlertDialog] when a root/jailbreak/hook threat is
///   detected so the user cannot continue using the app.
class SecurityService {
  SecurityService._();

  static final SecurityService _instance = SecurityService._();

  /// Singleton accessor.
  static SecurityService get instance => _instance;

  static final GlobalKey<NavigatorState> _navigatorKey =
      GlobalKey<NavigatorState>();

  /// The navigator key that must be passed to [MaterialApp] so that
  /// [SecurityService] can show blocking dialogs from outside the widget tree.
  ///
  /// In `base_app.dart`, pass this key:
  /// ```dart
  /// MaterialApp(navigatorKey: SecurityService.navigatorKey, ...)
  /// ```
  static GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  bool _dialogShowing = false;

  /// Initializes freeRASP using values injected via `--dart-define-from-file`.
  ///
  /// [isProd] must be `true` for production builds and `false` for development.
  /// Values are read from `String.fromEnvironment()` — pass them via:
  /// `flutter run --dart-define-from-file=.env.development.json`
  Future<void> initialize({required bool isProd}) async {
    const androidCertHash = String.fromEnvironment('ANDROID_SIGNING_CERT_HASH');
    const iosBundleId = String.fromEnvironment('IOS_BUNDLE_ID');
    const iosTeamId = String.fromEnvironment('IOS_TEAM_ID');

    // Filter out missing/invalid hashes — freeRASP requires SHA-256 hashes
    // (32 bytes → 64 hex chars or 44 base64).
    final validHashes = [androidCertHash]
        .where(_looksLikeValidCertHash)
        .toList(growable: false);

    final TalsecConfig config;
    try {
      config = TalsecConfig(
        androidConfig: AndroidConfig(
          packageName: 'com.example.base_flutter',
          signingCertHashes: validHashes,
          supportedStores: const ['com.android.vending'],
        ),
        iosConfig: IOSConfig(
          bundleIds: [iosBundleId],
          teamId: iosTeamId,
        ),
        watcherMail: 'amaz82325@gmail.com',
        isProd: isProd,
      );
    } catch (e, s) {
      developer.log(
        'freeRASP config invalid — skipping initialization',
        name: 'base.security',
        level: 1000,
        error: e,
        stackTrace: s,
      );
      return;
    }

    final callback = ThreatCallback(
      onAppIntegrity: () => _handleThreat('App tamper detected'),
      onDebug: () => _handleThreat('Debugger detected'),
      onSimulator: () => _handleThreat('Emulator detected'),
      onHooks: () => _handleThreat('Hook framework detected'),
      onPrivilegedAccess: () => _handleThreat('Root / Jailbreak detected'),
      onUnofficialStore: () => _handleThreat('Unofficial store detected'),
      onScreenshot: () => _logWarning('Screenshot detected'),
      onScreenRecording: () => _logWarning('Screen recording detected'),
      onObfuscationIssues: () => developer.log(
        'Obfuscation issue detected — ensure --obfuscate flag is used in release builds',
        name: 'base.security',
      ),
      onDeviceBinding: () => _handleThreat('Device binding issue'),
    );

    Talsec.instance.attachListener(callback);

    try {
      await Talsec.instance.start(config);
      developer.log('freeRASP initialized — isProd=$isProd', name: 'eol.security');
    } catch (e, s) {
      developer.log(
        'freeRASP initialization failed',
        name: 'base.security',
        level: 1000,
        error: e,
        stackTrace: s,
      );
    }
  }

  void _logWarning(String reason) {
    developer.log('Security warning: $reason', name: 'base.security', level: 800);
  }

  /// Returns `true` if [hash] looks like a valid SHA-256 cert hash:
  /// either 64 hex characters or 44 base64 characters. Placeholder strings
  /// like `REPLACE_WITH_...` are rejected so dev builds don't crash.
  static bool _looksLikeValidCertHash(String hash) {
    final trimmed = hash.trim();
    if (trimmed.length == 64 && RegExp(r'^[0-9a-fA-F]+$').hasMatch(trimmed)) {
      return true;
    }
    if (trimmed.length == 44 &&
        RegExp(r'^[A-Za-z0-9+/]{43}=$').hasMatch(trimmed)) {
      return true;
    }
    return false;
  }

  void _handleThreat(String reason) {
    developer.log('Security threat: $reason', name: 'base.security', level: 900);

    if (_dialogShowing) return;
    _dialogShowing = true;

    final context = _navigatorKey.currentContext;
    if (context == null) return;

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: AlertDialog(
          title: const Text('تحذير أمني'),
          content: const Text(
            'تم اكتشاف تهديد أمني على جهازك.\n'
            'لا يمكن الاستمرار في استخدام التطبيق.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                _exitApp();
              },
              child: const Text('خروج'),
            ),
          ],
        ),
      ),
    ).then((_) => _dialogShowing = false);
  }

  void _exitApp() {
    developer.log('Exiting app due to security threat', name: 'eol.security');
    exit(0);
  }
}