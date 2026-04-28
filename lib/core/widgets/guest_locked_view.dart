import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core.dart';
import '../services/guest_mode_service.dart';

/// Full-screen view shown to guest users when they navigate
/// to a locked tab (e.g. Community).
///
/// Displays a lock icon, a title, a description, and
/// Login / Sign Up buttons.
class GuestLockedView extends StatelessWidget {
  final String featureName;
  final String? description;
  final IconData icon;

  const GuestLockedView({
    super.key,
    required this.featureName,
    this.description,
    this.icon = Icons.lock_outline_rounded,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;
    final isArabic = context.isArabic;

    final desc =
        description ??
        (isArabic
            ? 'سجل دخول للمشاركة في النقاشات والتواصل مع المتعلمين'
            : 'Sign in to join discussions and connect '
                  'with other learners');

    return Scaffold(
      backgroundColor: context.colors.surface,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Animated lock container
                TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.0, end: 1.0),
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.easeOutBack,
                  builder: (context, value, child) {
                    return Transform.scale(scale: value, child: child);
                  },
                  child: Container(
                    width: 100.w,
                    height: 100.w,
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
                    child: Icon(icon, size: 48.r, color: AppColors.primary),
                  ),
                ),
                SizedBox(height: 28.h),

                // Title
                Text(
                  isArabic ? 'انضم لـ $featureName' : 'Join $featureName',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    color: isDark ? Colors.white : Colors.black87,
                  ),
                ),
                SizedBox(height: 12.h),

                // Description
                Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: isDark ? Colors.white54 : Colors.grey[600],
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 36.h),

                // Login button
                SizedBox(
                  width: double.infinity,
                  height: 52.h,
                  child: ElevatedButton(
                    onPressed: () {
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
      ),
    );
  }
}
