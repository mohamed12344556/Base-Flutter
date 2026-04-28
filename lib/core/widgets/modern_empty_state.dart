import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
import '../core.dart';

class ModernEmptyState extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? subtitle;
  final String? buttonText;
  final VoidCallback? onButtonPressed;
  final List<Color>? gradientColors;
  final double? iconSize;
  final double? containerSize;

  const ModernEmptyState({
    super.key,
    this.icon,
    required this.title,
    this.subtitle,
    this.buttonText,
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
  });

  const ModernEmptyState.notifications({
    super.key,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
  }) : icon = Icons.notifications_none_outlined,
       title = 'No Notifications Yet',
       subtitle =
           'When you get notifications, they\'ll\nshow up here to keep you updated',
       buttonText = 'Stay tuned!',
       onButtonPressed = null;

  const ModernEmptyState.search({
    super.key,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
  }) : icon = Icons.search_off,
       title = 'No Results Found',
       subtitle =
           'We couldn\'t find what you\'re looking for.\nTry adjusting your search terms',
       buttonText = null,
       onButtonPressed = null;

  const ModernEmptyState.noData({
    super.key,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
  }) : icon = Icons.inbox_outlined,
       title = 'No Data Available',
       subtitle =
           'There\'s nothing to show here yet.\nCheck back later for updates',
       buttonText = null,
       onButtonPressed = null;

  const ModernEmptyState.error({
    super.key,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
  }) : icon = Icons.error_outline,
       title = 'Something Went Wrong',
       subtitle =
           'We encountered an error while loading.\nPlease try again later',
       buttonText = 'Retry',
       onButtonPressed = null;

  @override
  Widget build(BuildContext context) {
    final defaultGradient =
        gradientColors ??
        [AppColors.primary, AppColors.primary.withValues(alpha: 0.8)];

    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(32.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 800),
                tween: Tween(begin: 0.0, end: 1.0),
                curve: Curves.elasticOut,
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value,
                    child: Container(
                      width: containerSize?.r,
                      height: containerSize?.r,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: defaultGradient,
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(containerSize! / 2),
                        boxShadow: [
                          BoxShadow(
                            color: defaultGradient.first.withValues(
                              alpha: 0.3 * value,
                            ),
                            blurRadius: 20 * value,
                            offset: Offset(0, 10 * value),
                          ),
                        ],
                      ),
                      child: Icon(
                        icon ?? Icons.inbox_outlined,
                        size: iconSize?.r,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 32.h),
              Text(
                _resolveTitle(context, title),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: context.colors.onSurface,
                ),
              ),
              if (subtitle != null) ...[
                SizedBox(height: 12.h),
                Text(
                  _resolveSubtitle(context, subtitle!),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: context.colors.onSurfaceVariant,
                    height: 1.4,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  String _resolveTitle(BuildContext context, String title) {
    switch (title) {
      case 'No Notifications Yet':
        return S.of(context).empty_notifications;
      case 'No Courses Yet':
        return S.of(context).empty_courses;
      case 'No Questions Yet':
        return S.of(context).empty_community;
      case 'No Notes Yet':
        return S.of(context).empty_notes;
      default:
        return title;
    }
  }

  String _resolveSubtitle(BuildContext context, String subtitle) {
    switch (subtitle) {
      case 'When you get notifications, they\'ll\nshow up here to keep you updated':
        return S.of(context).empty_notifications;
      default:
        return subtitle;
    }
  }
}