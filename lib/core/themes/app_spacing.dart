import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Unified spacing system for the entire app.
///
/// Use the [num] extensions for inline usage:
/// ```dart
/// Column(
///   children: [
///     Text('Hello'),
///     8.verticalSpace,  // SizedBox(height: 8.h)
///     Text('World'),
///   ],
/// )
///
/// Row(
///   children: [
///     Icon(Icons.star),
///     12.horizontalSpace,  // SizedBox(width: 12.w)
///     Text('Rating'),
///   ],
/// )
/// ```
extension SpacingExtension on num {
  /// Creates a vertical [SizedBox] with responsive height.
  SizedBox get verticalSpace => SizedBox(height: toDouble().h);

  /// Creates a horizontal [SizedBox] with responsive width.
  SizedBox get horizontalSpace => SizedBox(width: toDouble().w);
}

/// Pre-built vertical spacing widgets for common values.
///
/// ```dart
/// Column(
///   children: [
///     Text('Title'),
///     AppSpacing.v8,
///     Text('Subtitle'),
///   ],
/// )
/// ```
class AppSpacing {
  AppSpacing._();

  // Vertical spacing
  static SizedBox get v2 => SizedBox(height: 2.h);
  static SizedBox get v4 => SizedBox(height: 4.h);
  static SizedBox get v6 => SizedBox(height: 6.h);
  static SizedBox get v8 => SizedBox(height: 8.h);
  static SizedBox get v10 => SizedBox(height: 10.h);
  static SizedBox get v12 => SizedBox(height: 12.h);
  static SizedBox get v14 => SizedBox(height: 14.h);
  static SizedBox get v16 => SizedBox(height: 16.h);
  static SizedBox get v20 => SizedBox(height: 20.h);
  static SizedBox get v24 => SizedBox(height: 24.h);
  static SizedBox get v32 => SizedBox(height: 32.h);
  static SizedBox get v40 => SizedBox(height: 40.h);
  static SizedBox get v48 => SizedBox(height: 48.h);

  // Horizontal spacing
  static SizedBox get h2 => SizedBox(width: 2.w);
  static SizedBox get h4 => SizedBox(width: 4.w);
  static SizedBox get h6 => SizedBox(width: 6.w);
  static SizedBox get h8 => SizedBox(width: 8.w);
  static SizedBox get h10 => SizedBox(width: 10.w);
  static SizedBox get h12 => SizedBox(width: 12.w);
  static SizedBox get h14 => SizedBox(width: 14.w);
  static SizedBox get h16 => SizedBox(width: 16.w);
  static SizedBox get h20 => SizedBox(width: 20.w);
  static SizedBox get h24 => SizedBox(width: 24.w);
  static SizedBox get h32 => SizedBox(width: 32.w);
  static SizedBox get h40 => SizedBox(width: 40.w);
  static SizedBox get h48 => SizedBox(width: 48.w);
}
