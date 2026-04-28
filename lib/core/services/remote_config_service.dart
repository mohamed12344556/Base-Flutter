import 'dart:developer' as developer;

import 'package:firebase_remote_config/firebase_remote_config.dart';

import '../themes/app_color_theme.dart';
import '../themes/cubit/color_theme_cubit.dart';
import 'package:base_flutter/core/logger/base_logger.dart';

/// Wraps Firebase Remote Config for theme management.
class RemoteConfigService {
  final FirebaseRemoteConfig _remoteConfig;
  final ColorThemeCubit _colorThemeCubit;

  static const String _themeKey = 'app_color_theme';
  static const String minAppVersionKey = 'min_app_version';

  RemoteConfigService({
    required ColorThemeCubit colorThemeCubit,
    FirebaseRemoteConfig? remoteConfig,
  }) : _colorThemeCubit = colorThemeCubit,
       _remoteConfig = remoteConfig ?? FirebaseRemoteConfig.instance;

  FirebaseRemoteConfig get remoteConfig => _remoteConfig;

  /// Initialize Remote Config with defaults and fetch.
  Future<void> initialize() async {
    try {
      await _remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(minutes: 1),
          minimumFetchInterval: const Duration(hours: 1),
        ),
      );

      await _remoteConfig.setDefaults({
        _themeKey: AppColorTheme.defaultTheme.key,
      });

      await _remoteConfig.fetchAndActivate();
      _applyTheme();

      // Listen for real-time updates while the app is open.
      _remoteConfig.onConfigUpdated.listen((event) async {
        await _remoteConfig.activate();
        _applyTheme();
      });
    } catch (e) {
      BaseLogger.e('RemoteConfigService: init error: $e', error: e);
    }
  }

  void _applyTheme() {
    final themeKey = _remoteConfig.getString(_themeKey);
    final theme = AppColorTheme.fromKey(themeKey);

    developer.log(
      'RemoteConfigService: applying theme "$themeKey"',
      name: 'remote_config',
    );

    _colorThemeCubit.setColorTheme(theme);
  }
}
