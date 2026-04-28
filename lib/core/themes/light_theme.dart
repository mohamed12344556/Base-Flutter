import 'package:flutter/material.dart';

import '../core.dart';

/// Generates a light [ThemeData] using [primaryColor] as seed.
ThemeData buildLightTheme(Color primaryColor) => ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.white,
  brightness: Brightness.light,
  fontFamily: AppFonts.primaryFont,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.light,
  ),

  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    titleTextStyle: AppTextStyling.font10W400TextColor.copyWith(
      color: const Color(0xFF374151),
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    iconTheme: const IconThemeData(color: Color(0xFF374151)),
  ),

  textTheme: ThemeData.light().textTheme.apply(
    bodyColor: AppColors.text,
    displayColor: AppColors.secondary,
    fontFamily: AppFonts.textFont,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
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
      return AppColors.error;
    }),
    filled: true,
    hintStyle: AppTextStyling.font10W400TextColor.copyWith(
      color: AppColors.error,
    ),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStatePropertyAll(primaryColor),
    trackColor: WidgetStatePropertyAll(primaryColor),
    trackOutlineColor: WidgetStatePropertyAll(primaryColor),
  ),
  bottomAppBarTheme: BottomAppBarThemeData(color: primaryColor, elevation: 0),
  bottomSheetTheme: BottomSheetThemeData(backgroundColor: primaryColor),
  dividerTheme: const DividerThemeData(
    color: Colors.grey,
    thickness: 1,
    endIndent: 10,
    indent: 10,
  ),
);

/// Default light theme for backward compatibility.
final ThemeData lightTheme = buildLightTheme(AppColors.primary);
