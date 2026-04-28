import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Centralized padding/margin constants for the entire app.
///
/// ```dart
/// Padding(
///   padding: AppPadding.screenH,
///   child: Column(...),
/// )
/// ```
class AppPadding {
  AppPadding._();

  // ===== All sides =====
  static EdgeInsets get all4 => EdgeInsets.all(4.r);
  static EdgeInsets get all6 => EdgeInsets.all(6.r);
  static EdgeInsets get all8 => EdgeInsets.all(8.r);
  static EdgeInsets get all12 => EdgeInsets.all(12.r);
  static EdgeInsets get all14 => EdgeInsets.all(14.r);
  static EdgeInsets get all16 => EdgeInsets.all(16.r);
  static EdgeInsets get all20 => EdgeInsets.all(20.r);
  static EdgeInsets get all24 => EdgeInsets.all(24.r);
  static EdgeInsets get all32 => EdgeInsets.all(32.r);

  // ===== Horizontal only =====
  static EdgeInsets get h4 => EdgeInsets.symmetric(horizontal: 4.w);
  static EdgeInsets get h6 => EdgeInsets.symmetric(horizontal: 6.w);
  static EdgeInsets get h8 => EdgeInsets.symmetric(horizontal: 8.w);
  static EdgeInsets get h12 => EdgeInsets.symmetric(horizontal: 12.w);
  static EdgeInsets get h16 => EdgeInsets.symmetric(horizontal: 16.w);
  static EdgeInsets get h20 => EdgeInsets.symmetric(horizontal: 20.w);
  static EdgeInsets get h24 => EdgeInsets.symmetric(horizontal: 24.w);
  static EdgeInsets get h32 => EdgeInsets.symmetric(horizontal: 32.w);

  // ===== Vertical only =====
  static EdgeInsets get v4 => EdgeInsets.symmetric(vertical: 4.h);
  static EdgeInsets get v6 => EdgeInsets.symmetric(vertical: 6.h);
  static EdgeInsets get v8 => EdgeInsets.symmetric(vertical: 8.h);
  static EdgeInsets get v12 => EdgeInsets.symmetric(vertical: 12.h);
  static EdgeInsets get v16 => EdgeInsets.symmetric(vertical: 16.h);
  static EdgeInsets get v20 => EdgeInsets.symmetric(vertical: 20.h);
  static EdgeInsets get v24 => EdgeInsets.symmetric(vertical: 24.h);

  // ===== Screen-level padding =====
  /// Standard horizontal screen padding (16.w)
  static EdgeInsets get screenH => EdgeInsets.symmetric(horizontal: 16.w);

  /// Standard screen padding (horizontal: 16.w, vertical: 24.h)
  static EdgeInsets get screen =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h);

  // ===== Common combinations =====
  /// Card padding (horizontal: 16.w, vertical: 12.h)
  static EdgeInsets get card =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h);

  /// List item padding (horizontal: 16.w, vertical: 8.h)
  static EdgeInsets get listItem =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h);

  /// Section padding (horizontal: 16.w, vertical: 16.h)
  static EdgeInsets get section =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h);

  /// Chip/tag padding (horizontal: 12.w, vertical: 6.h)
  static EdgeInsets get chip =>
      EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h);

  /// Button padding (horizontal: 24.w, vertical: 12.h)
  static EdgeInsets get button =>
      EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h);
}
