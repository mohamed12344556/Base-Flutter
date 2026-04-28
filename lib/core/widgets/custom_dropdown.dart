import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core.dart';

/// A premium, dark-mode-aware dropdown form field.
///
/// Styled to match the app's text fields: rounded corners,
/// subtle border, prefix icon, and themed menu.
///
/// ```dart
/// CustomDropdown<int>(
///   value: selectedId,
///   hint: 'Select Stage',
///   icon: Icons.school_rounded,
///   items: stages.map((s) => DropdownMenuItem(
///     value: s.id,
///     child: Text(s.name),
///   )).toList(),
///   onChanged: (v) => setState(() => selectedId = v),
/// )
/// ```
class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.hint,
    required this.icon,
    required this.onChanged,
    this.validator,
    this.isLoading = false,
    this.isExpanded = true,
  });

  final T? value;
  final List<DropdownMenuItem<T>> items;
  final String hint;
  final IconData icon;
  final ValueChanged<T?> onChanged;
  final String? Function(T?)? validator;
  final bool isLoading;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return SizedBox(
        height: 56.h,
        child: Center(
          child: SizedBox.square(
            dimension: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: AppColors.primary.withValues(alpha: 0.6),
            ),
          ),
        ),
      );
    }

    final isDark = context.isDarkMode;

    final fillColor = isDark
        ? Colors.white.withValues(alpha: 0.05)
        : Colors.grey.shade50;

    final borderColor = isDark
        ? Colors.white.withValues(alpha: 0.07)
        : Colors.black.withValues(alpha: 0.05);

    final iconColor = AppColors.primary.withValues(alpha: isDark ? 0.8 : 0.6);

    final hintColor = context.colors.onSurfaceVariant.withValues(alpha: 0.8);

    return DropdownButtonFormField<T>(
      value: value,
      validator: validator,
      isExpanded: isExpanded,
      hint: Text(
        hint,
        style: TextStyle(
          color: hintColor,
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: iconColor, size: 22.sp),
        filled: true,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: borderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: AppColors.primary, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: context.colors.error.withValues(alpha: 0.6),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: context.colors.error, width: 1.5),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      ),
      dropdownColor: isDark
          ? context.colors.surfaceContainerHighest
          : context.colors.surface,
      menuMaxHeight: 300,
      borderRadius: BorderRadius.circular(12.r),
      style: TextStyle(
        color: context.colors.onSurface,
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
      ),
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: hintColor,
        size: 24.sp,
      ),
      items: items,
      onChanged: onChanged,
    );
  }
}
