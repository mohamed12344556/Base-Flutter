import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/core.dart';
import '../../../../core/responsive/app_breakpoint.dart';

class AuthGlassmorphismLayout extends StatelessWidget {
  final Widget child;
  final String title;
  final String? subtitle;

  const AuthGlassmorphismLayout({
    super.key,
    required this.child,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;

    return Scaffold(
      backgroundColor: context.colors.surface,
      body: Stack(
        children: [
          Positioned(
            top: -80.h,
            left: -60.w,
            child: _GlowOrb(
              color: AppColors.primary,
              size: 220.w,
              opacity: isDark ? 0.12 : 0.07,
            ),
          ),
          Positioned(
            bottom: -60.h,
            right: -80.w,
            child: _GlowOrb(
              color: context.colors.secondary,
              size: 260.w,
              opacity: isDark ? 0.1 : 0.05,
            ),
          ),
          SafeArea(
            child: Center(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final isTablet = breakpointOf(context) != AppBreakpoint.compact;
                  final content = SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
                    physics: const BouncingScrollPhysics(),
                    child: _buildContent(context, isDark),
                  );
                  if (isTablet) {
                    return ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 480.w),
                      child: content,
                    );
                  }
                  return content;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context, bool isDark) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Container(
            width: 80.w,
            height: 80.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppSizes.radiusXl),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withValues(
                    alpha: isDark ? 0.3 : 0.15,
                  ),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.radiusXl),
              child: Image.asset(
                'assets/images/app_logo.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        AppSpacing.v24,
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28.sp,
            fontWeight: FontWeight.w800,
            color: context.colors.onSurface,
            letterSpacing: 0.5,
          ),
        ),
        if (subtitle != null) ...[
          AppSpacing.v8,
          Text(
            subtitle!,
            textAlign: TextAlign.center,
            style: AppTextStyling.font14W400.copyWith(
              color: isDark ? Colors.grey[400] : Colors.grey[600],
              height: 1.5,
            ),
          ),
        ],
        AppSpacing.v32,
        Container(
          padding: AppPadding.all24,
          decoration: BoxDecoration(
            color: isDark
                ? Colors.white.withValues(alpha: 0.03)
                : Colors.white,
            borderRadius: BorderRadius.circular(AppSizes.radiusXxl),
            border: Border.all(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.05)
                  : Colors.transparent,
            ),
            boxShadow: isDark
                ? []
                : [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 24,
                      offset: const Offset(0, 10),
                    ),
                  ],
          ),
          child: child,
        ),
      ],
    );
  }
}

class _GlowOrb extends StatelessWidget {
  final Color color;
  final double size;
  final double opacity;

  const _GlowOrb({
    required this.color,
    required this.size,
    required this.opacity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            color.withValues(alpha: opacity * 2),
            color.withValues(alpha: opacity),
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}