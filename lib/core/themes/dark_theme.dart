import 'package:flutter/material.dart';

import '../core.dart';
import 'dark_theme_style.dart';

/// Generates a dark [ThemeData] using [primaryColor] as seed.
/// Optionally applies a [DarkThemeStyle] for background and accent overrides.
ThemeData buildDarkTheme(Color primaryColor, [DarkThemeStyle? style]) {
  final bgColor = style?.backgroundColor ?? Colors.black;
  final accent = style?.accentColor ?? primaryColor;
  return _buildDarkThemeData(accent, bgColor);
}

ThemeData _buildDarkThemeData(Color primaryColor, Color bgColor) => ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: bgColor,
  brightness: Brightness.dark,
  fontFamily: AppFonts.primaryFont,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.dark,
  ),

  appBarTheme: AppBarTheme(
    backgroundColor: bgColor,
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    titleTextStyle: AppTextStyling.font10W400TextColor.copyWith(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  ),

  textTheme: ThemeData.dark().textTheme.apply(
    bodyColor: AppColors.text,
    displayColor: AppColors.secondary,
    fontFamily: AppFonts.textFont,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      textStyle: AppTextStyling.font10W400TextColor,
      elevation: 0,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey[200]!, width: 1),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey[200]!, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey[300]!, width: 1),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.red, width: 1),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.red, width: 1),
    ),
    fillColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.focused)) {
        return primaryColor;
      }
      return primaryColor;
    }),
    filled: true,
    hintStyle: AppTextStyling.font10W400TextColor.copyWith(
      color: AppColors.error,
    ),
  ),
  dividerTheme: const DividerThemeData(
    color: Colors.grey,
    thickness: 1,
    endIndent: 10,
    indent: 10,
  ),
);

/// Default dark theme for backward compatibility.
final ThemeData darkTheme = buildDarkTheme(AppColors.primary);
