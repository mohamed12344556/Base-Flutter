import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Centralized size constants for the entire app.
///
/// All values use [flutter_screenutil] for responsive sizing.
class AppSizes {
  AppSizes._();

  // ===== Spacing (raw values for custom use) =====
  static double get s2 => 2.r;
  static double get s4 => 4.r;
  static double get s6 => 6.r;
  static double get s8 => 8.r;
  static double get s10 => 10.r;
  static double get s12 => 12.r;
  static double get s14 => 14.r;
  static double get s16 => 16.r;
  static double get s20 => 20.r;
  static double get s24 => 24.r;
  static double get s32 => 32.r;
  static double get s40 => 40.r;
  static double get s48 => 48.r;
  static double get s64 => 64.r;

  // ===== Border Radius =====
  static double get radiusXs => 4.r;
  static double get radiusSm => 8.r;
  static double get radiusMd => 12.r;
  static double get radiusLg => 16.r;
  static double get radiusXl => 20.r;
  static double get radiusXxl => 24.r;
  static double get radiusRound => 30.r;
  static double get radiusFull => 999.r;

  // ===== Icon Sizes =====
  static double get iconXs => 14.r;
  static double get iconSm => 16.r;
  static double get iconMd => 20.r;
  static double get iconLg => 24.r;
  static double get iconXl => 32.r;
  static double get iconXxl => 48.r;

  // ===== Font Sizes =====
  static double get font10 => 10.sp;
  static double get font11 => 11.sp;
  static double get font12 => 12.sp;
  static double get font13 => 13.sp;
  static double get font14 => 14.sp;
  static double get font15 => 15.sp;
  static double get font16 => 16.sp;
  static double get font17 => 17.sp;
  static double get font18 => 18.sp;
  static double get font20 => 20.sp;
  static double get font22 => 22.sp;
  static double get font24 => 24.sp;
  static double get font26 => 26.sp;
  static double get font32 => 32.sp;

  // ===== Screen Padding =====
  static double get screenPaddingH => 16.w;
  static double get screenPaddingV => 24.h;

  // ===== Common Widget Sizes =====
  static double get buttonHeight => 48.h;
  static double get inputHeight => 48.h;
  static double get appBarHeight => 56.h;
  static double get avatarSm => 32.r;
  static double get avatarMd => 40.r;
  static double get avatarLg => 56.r;
  static double get avatarXl => 80.r;
}
