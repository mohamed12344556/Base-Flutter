import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core.dart';
import '../services/guest_mode_service.dart';

/// A premium bottom sheet that prompts guest users to
/// log in or sign up in order to access a locked feature.
class LoginPromptBottomSheet {
  LoginPromptBottomSheet._();

  /// Shows the login prompt bottom sheet.
  ///
  /// [featureName] is an optional label that describes the
  /// feature the guest is trying to access (e.g. "Community").
  static Future<void> show(BuildContext context, {String? featureName}) {
    final isDark = context.isDarkMode;
    final isArabic = context.isArabic;

    final title = featureName != null
        ? (isArabic
              ? 'سجل دخول للوصول لـ $featureName'
              : 'Sign in to access $featureName')
        : (isArabic ? 'تسجيل الدخول مطلوب' : 'Login Required');

    final description = isArabic
        ? 'انشئ حساب لفتح جميع المميزات وتخصيص تجربة التعلم'
        : 'Create an account to unlock all features and '
              'personalize your learning experience';

    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => _PromptContent(
        title: title,
        description: description,
        isDark: isDark,
        isArabic: isArabic,
      ),
    );
  }
}

class _PromptContent extends StatelessWidget {
  final String title;
  final String description;
  final bool isDark;
  final bool isArabic;

  const _PromptContent({
    required this.title,
    required this.description,
    required this.isDark,
    required this.isArabic,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E1E2C) : Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28.r)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.w, 12.h, 24.w, 24.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Handle bar
              Container(
                width: 40.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: isDark ? Colors.white24 : Colors.grey[300],
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
              SizedBox(height: 24.h),

              // Lock icon with gradient background
              Container(
                width: 72.w,
                height: 72.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.primary.withValues(alpha: 0.15),
                      AppColors.primary.withValues(alpha: 0.05),
                    ],
                  ),
                ),
                child: Icon(
                  Icons.lock_outline_rounded,
                  size: 36.r,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: 20.h),

              // Title
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                  color: isDark ? Colors.white : Colors.black87,
                ),
              ),
              SizedBox(height: 10.h),

              // Description
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: isDark ? Colors.white54 : Colors.grey[600],
                  height: 1.5,
                ),
              ),
              SizedBox(height: 28.h),

              // Login button
              SizedBox(
                width: double.infinity,
                height: 52.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    GuestModeService.disableGuestMode();
                    context.pushNamedAndRemoveUntil(
                      AppRoutes.loginView,
                      predicate: (route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    isArabic ? 'تسجيل الدخول' : 'Login',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.h),

              // Sign Up button
              SizedBox(
                width: double.infinity,
                height: 52.h,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    GuestModeService.disableGuestMode();
                    context.pushNamedAndRemoveUntil(
                      AppRoutes.registerView,
                      predicate: (route) => false,
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: AppColors.primary, width: 1.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                  ),
                  child: Text(
                    isArabic ? 'إنشاء حساب' : 'Sign Up',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
