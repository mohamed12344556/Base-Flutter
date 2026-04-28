import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final IconData? icon;
  final bool isLoading;
  final double borderRadius;
  final Gradient? gradient;
  final Border? border;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.fontWeight = FontWeight.w600,
    this.icon,
    this.isLoading = false,
    this.borderRadius = 12,
    this.gradient,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? 50.h,
      decoration: BoxDecoration(
        gradient:
            gradient ??
            (backgroundColor != null
                ? LinearGradient(colors: [backgroundColor!, backgroundColor!])
                : const LinearGradient(
                    colors: [
                      Color(0xFF2F98D7), // primary
                      Color(0xFF73CBFF), // lightBlue
                    ],
                  )),
        borderRadius: BorderRadius.circular(borderRadius.r),
        border: border,
        boxShadow: [
          BoxShadow(
            color: (backgroundColor ?? const Color(0xFF2F98D7)).withValues(
              alpha: 0.4,
            ),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isLoading ? null : onPressed,
          borderRadius: BorderRadius.circular(borderRadius.r),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
            child: isLoading
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 18.r,
                        width: 18.r,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            textColor ?? Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: (fontSize ?? 16).sp,
                          fontWeight: fontWeight,
                          color: textColor ?? Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (icon != null) ...[
                        Icon(
                          icon,
                          size: (fontSize ?? 16).sp + 4.sp,
                          color: textColor ?? Colors.white,
                        ),
                        SizedBox(width: 8.w),
                      ],
                      Text(
                        text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: (fontSize ?? 16).sp,
                          fontWeight: fontWeight,
                          color: textColor ?? Colors.white,
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
