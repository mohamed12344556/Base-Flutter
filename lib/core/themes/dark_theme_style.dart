import 'package:flutter/material.dart';

/// Defines distinct dark-mode visual styles.
enum DarkThemeStyle {
  classicDark(
    'classic_dark',
    'Classic Dark',
    'Neon green accents on dark background',
    Color(0xFF1A1A1A),
    Color(0xFF4CAF50),
    Icons.dark_mode_rounded,
  ),
  midnightBlue(
    'midnight_blue',
    'Midnight Blue',
    'Deep blue theme for nighttime viewing',
    Color(0xFF0D1B2A),
    Color(0xFF2196F3),
    Icons.nights_stay_rounded,
  ),
  amoledBlack(
    'amoled_black',
    'AMOLED Black',
    'Pure black for OLED screens',
    Color(0xFF000000),
    Color(0xFF9E9E9E),
    Icons.smartphone_rounded,
  ),
  sunset(
    'sunset',
    'Sunset',
    'Warm orange and purple tones',
    Color(0xFF1C0F1F),
    Color(0xFFFF9800),
    Icons.wb_twilight_rounded,
  ),
  forestNight(
    'forest_night',
    'Forest Night',
    'Dark emerald and teal accents',
    Color(0xFF0A1F1A),
    Color(0xFF009688),
    Icons.forest_rounded,
  );

  const DarkThemeStyle(
    this.key,
    this.label,
    this.description,
    this.backgroundColor,
    this.accentColor,
    this.icon,
  );

  final String key;
  final String label;
  final String description;

  /// The scaffold/surface background color.
  final Color backgroundColor;

  /// The primary accent color for this style.
  final Color accentColor;

  final IconData icon;

  static DarkThemeStyle fromKey(String? key) =>
      values.firstWhere((s) => s.key == key, orElse: () => classicDark);
}
