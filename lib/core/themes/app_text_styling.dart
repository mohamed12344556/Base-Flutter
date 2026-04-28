import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

/// Centralized text styles for the entire app.
///
/// Naming: `font{size}W{weight}` with optional color suffix.
///
/// ```dart
/// Text('Hello', style: AppTextStyling.font16W600)
/// Text('Hello', style: AppTextStyling.font14W400.copyWith(color: Colors.red))
/// ```
class AppTextStyling {
  AppTextStyling._();

  // ===== Font Size 10 =====
  static TextStyle get font10W400 =>
      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400);
  static TextStyle get font10W500 =>
      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500);
  static TextStyle get font10W600 =>
      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600);

  // ===== Font Size 11 =====
  static TextStyle get font11W400 =>
      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400);
  static TextStyle get font11W500 =>
      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500);
  static TextStyle get font11W600 =>
      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w600);

  // ===== Font Size 12 =====
  static TextStyle get font12W400 =>
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400);
  static TextStyle get font12W500 =>
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500);
  static TextStyle get font12W600 =>
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600);
  static TextStyle get font12W700 =>
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700);

  // ===== Font Size 13 =====
  static TextStyle get font13W400 =>
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400);
  static TextStyle get font13W500 =>
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500);
  static TextStyle get font13W600 =>
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600);

  // ===== Font Size 14 =====
  static TextStyle get font14W400 =>
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400);
  static TextStyle get font14W500 =>
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500);
  static TextStyle get font14W600 =>
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600);
  static TextStyle get font14W700 =>
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700);

  // ===== Font Size 15 =====
  static TextStyle get font15W400 =>
      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400);
  static TextStyle get font15W500 =>
      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500);
  static TextStyle get font15W600 =>
      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600);
  static TextStyle get font15W700 =>
      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700);

  // ===== Font Size 16 =====
  static TextStyle get font16W400 =>
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400);
  static TextStyle get font16W500 =>
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500);
  static TextStyle get font16W600 =>
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600);
  static TextStyle get font16W700 =>
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700);

  // ===== Font Size 17 =====
  static TextStyle get font17W500 =>
      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500);
  static TextStyle get font17W600 =>
      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600);

  // ===== Font Size 18 =====
  static TextStyle get font18W400 =>
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400);
  static TextStyle get font18W500 =>
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500);
  static TextStyle get font18W600 =>
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600);
  static TextStyle get font18W700 =>
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700);

  // ===== Font Size 20 =====
  static TextStyle get font20W500 =>
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500);
  static TextStyle get font20W600 =>
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600);
  static TextStyle get font20W700 =>
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700);

  // ===== Font Size 22 =====
  static TextStyle get font22W600 =>
      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600);
  static TextStyle get font22W700 =>
      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w700);

  // ===== Font Size 24 =====
  static TextStyle get font24W600 =>
      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600);
  static TextStyle get font24W700 =>
      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700);

  // ===== Font Size 26 =====
  static TextStyle get font26W700 =>
      TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w700);

  // ===== Font Size 32 =====
  static TextStyle get font32W700 =>
      TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w700);

  // ===== Legacy (keep for backward compatibility) =====
  static TextStyle get font10W400TextColor => TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );

  static TextStyle get font12W400TextColor => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );
}
