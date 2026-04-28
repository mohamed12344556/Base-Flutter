import 'package:flutter/material.dart';

/// Represents the color theme variants available in the app.
enum AppColorTheme {
  defaultTheme('default', Color(0xFF2F98D7), null),
  blue('blue', Color(0xFF2196F3), 'blue'),
  green('green', Color(0xFF4CAF50), 'green'),
  red('red', Color(0xFFF44336), 'red'),
  purple('purple', Color(0xFF9C27B0), 'purple'),
  orange('orange', Color(0xFFFF9800), 'orange'),
  teal('teal', Color(0xFF009688), 'teal'),
  pink('pink', Color(0xFFE91E63), 'pink'),
  indigo('indigo', Color(0xFF3F51B5), 'indigo'),
  amber('amber', Color(0xFFFFC107), 'amber');

  const AppColorTheme(this.key, this.primaryColor, this.iconName);

  /// Key used in Firebase Remote Config and SharedPreferences.
  final String key;

  /// The seed color for `ColorScheme.fromSeed()`.
  final Color primaryColor;

  /// The icon name for `flutter_dynamic_icon_plus` (null = default).
  final String? iconName;

  /// Parse from a string key. Falls back to [defaultTheme].
  static AppColorTheme fromKey(String? key) =>
      values.firstWhere((t) => t.key == key, orElse: () => defaultTheme);
}
