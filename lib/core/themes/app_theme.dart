import 'package:flutter/material.dart';

import 'app_color_theme.dart';
import 'dark_theme.dart';
import 'dark_theme_style.dart';
import 'light_theme.dart';

class AppTheme {
  AppTheme._();

  /// Generate light theme for a given [AppColorTheme].
  static ThemeData lightFor(AppColorTheme colorTheme) =>
      buildLightTheme(colorTheme.primaryColor);

  /// Generate dark theme for a given [AppColorTheme] and optional [DarkThemeStyle].
  static ThemeData darkFor(AppColorTheme colorTheme, [DarkThemeStyle? style]) =>
      buildDarkTheme(colorTheme.primaryColor, style);

  /// Default light theme (backward compat).
  static ThemeData light = lightTheme;

  /// Default dark theme (backward compat).
  static ThemeData dark = darkTheme;
}
