import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A unified Text widget with named constructors for common typography.
///
/// Supports both named constructors and full parameter customization.
///
/// ```dart
/// // Named constructors
/// CustomText.headingLg('Page Title')
/// CustomText.bodyMd('Some content', color: Colors.grey)
/// CustomText.caption('Small note', maxLines: 1)
///
/// // Full custom
/// CustomText('Hello', fontSize: 18, fontWeight: FontWeight.w600)
/// ```
class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final String? fontFamily;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextDecoration? decoration;
  final double? letterSpacing;
  final double? height;
  final TextStyle? style;

  /// Full custom text with any parameters.
  const CustomText(
    this.text, {
    super.key,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  });

  /// Heading Large - 24sp, w700
  const CustomText.headingLg(
    this.text, {
    super.key,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  }) : fontSize = 24,
       fontWeight = FontWeight.w700;

  /// Heading Medium - 20sp, w700
  const CustomText.headingMd(
    this.text, {
    super.key,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  }) : fontSize = 20,
       fontWeight = FontWeight.w700;

  /// Heading Small - 18sp, w600
  const CustomText.headingSm(
    this.text, {
    super.key,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  }) : fontSize = 18,
       fontWeight = FontWeight.w600;

  /// Title Large - 16sp, w700
  const CustomText.titleLg(
    this.text, {
    super.key,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  }) : fontSize = 16,
       fontWeight = FontWeight.w700;

  /// Title Medium - 16sp, w600
  const CustomText.titleMd(
    this.text, {
    super.key,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  }) : fontSize = 16,
       fontWeight = FontWeight.w600;

  /// Title Small - 14sp, w600
  const CustomText.titleSm(
    this.text, {
    super.key,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  }) : fontSize = 14,
       fontWeight = FontWeight.w600;

  /// Body Large - 16sp, w400
  const CustomText.bodyLg(
    this.text, {
    super.key,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  }) : fontSize = 16,
       fontWeight = FontWeight.w400;

  /// Body Medium - 14sp, w400
  const CustomText.bodyMd(
    this.text, {
    super.key,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  }) : fontSize = 14,
       fontWeight = FontWeight.w400;

  /// Body Small - 12sp, w400
  const CustomText.bodySm(
    this.text, {
    super.key,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  }) : fontSize = 12,
       fontWeight = FontWeight.w400;

  /// Label Large - 14sp, w500
  const CustomText.labelLg(
    this.text, {
    super.key,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  }) : fontSize = 14,
       fontWeight = FontWeight.w500;

  /// Label Medium - 12sp, w500
  const CustomText.labelMd(
    this.text, {
    super.key,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  }) : fontSize = 12,
       fontWeight = FontWeight.w500;

  /// Label Small - 10sp, w500
  const CustomText.labelSm(
    this.text, {
    super.key,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  }) : fontSize = 10,
       fontWeight = FontWeight.w500;

  /// Caption - 11sp, w400
  const CustomText.caption(
    this.text, {
    super.key,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.letterSpacing,
    this.height,
    this.style,
  }) : fontSize = 11,
       fontWeight = FontWeight.w400;

  @override
  Widget build(BuildContext context) {
    final baseStyle = TextStyle(
      fontSize: (fontSize ?? 14).sp,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color,
      fontFamily: fontFamily,
      decoration: decoration,
      letterSpacing: letterSpacing,
      height: height,
    );

    return Text(
      text,
      style: style?.merge(baseStyle) ?? baseStyle,
      textAlign: textAlign,
      overflow: overflow ?? (maxLines != null ? TextOverflow.ellipsis : null),
      maxLines: maxLines,
    );
  }
}
