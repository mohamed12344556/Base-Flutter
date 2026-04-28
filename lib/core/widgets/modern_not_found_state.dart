import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core.dart';

class ModernNotFoundState extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? subtitle;
  final String? buttonText;
  final VoidCallback? onButtonPressed;
  final List<Color>? gradientColors;
  final double? iconSize;
  final double? containerSize;
  final String? secondaryButtonText;
  final VoidCallback? onSecondaryButtonPressed;

  const ModernNotFoundState({
    super.key,
    this.icon,
    required this.title,
    this.subtitle,
    this.buttonText,
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText,
    this.onSecondaryButtonPressed,
  });

  // Pre-built not found states for common scenarios
  const ModernNotFoundState.courseSearch({
    super.key,
    this.buttonText = 'Search Again',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText = 'Browse All',
    this.onSecondaryButtonPressed,
  }) : icon = Icons.school_outlined,
       title = 'No Courses Found',
       subtitle =
           'We couldn\'t find any courses matching\nyour search criteria';

  const ModernNotFoundState.generalSearch({
    super.key,
    this.buttonText = 'Try Again',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText = 'Clear Filters',
    this.onSecondaryButtonPressed,
  }) : icon = Icons.search_off_rounded,
       title = 'No Results Found',
       subtitle =
           'We couldn\'t find what you\'re looking for.\nTry different keywords or filters';

  const ModernNotFoundState.page({
    super.key,
    this.buttonText = 'Go Home',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText = 'Go Back',
    this.onSecondaryButtonPressed,
  }) : icon = Icons.find_in_page_outlined,
       title = 'Page Not Found',
       subtitle =
           'The page you\'re looking for doesn\'t exist\nor has been moved';

  const ModernNotFoundState.content({
    super.key,
    this.buttonText = 'Explore More',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText = 'Go Back',
    this.onSecondaryButtonPressed,
  }) : icon = Icons.content_paste_off_rounded,
       title = 'Content Not Available',
       subtitle = 'This content is no longer available\nor has been removed';

  const ModernNotFoundState.user({
    super.key,
    this.buttonText = 'Search Users',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText = 'Go Back',
    this.onSecondaryButtonPressed,
  }) : icon = Icons.person_search_rounded,
       title = 'User Not Found',
       subtitle =
           'The user profile you\'re looking for\ndoesn\'t exist or is no longer available';

  const ModernNotFoundState.category({
    super.key,
    this.buttonText = 'Browse Categories',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText = 'Go Back',
    this.onSecondaryButtonPressed,
  }) : icon = Icons.category_outlined,
       title = 'Category Empty',
       subtitle =
           'This category doesn\'t have any content yet.\nCheck back later for updates';

  const ModernNotFoundState.favorite({
    super.key,
    this.buttonText = 'Discover Content',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText,
    this.onSecondaryButtonPressed,
  }) : icon = Icons.favorite_border_rounded,
       title = 'No Favorites Found',
       subtitle =
           'You haven\'t added anything to your favorites yet.\nStart exploring to find content you love';

  const ModernNotFoundState.history({
    super.key,
    this.buttonText = 'Start Learning',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText,
    this.onSecondaryButtonPressed,
  }) : icon = Icons.history_rounded,
       title = 'No History Found',
       subtitle =
           'Your learning history is empty.\nStart taking courses to see your progress';

  @override
  Widget build(BuildContext context) {
    final defaultGradient =
        gradientColors ??
        [AppColors.primary, AppColors.primary.withValues(alpha: 0.8)];

    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animated Not Found Icon Container
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
                      icon ?? Icons.search_off_rounded,
                      size: iconSize?.r,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),

            SizedBox(height: 32.h),

            // Not Found Title
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: context.colors.onSurface,
              ),
            ),

            // Not Found Subtitle
            if (subtitle != null) ...[
              SizedBox(height: 12.h),
              Text(
                subtitle!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: context.colors.onSurfaceVariant,
                  height: 1.5,
                ),
              ),
            ],

            SizedBox(height: 40.h),

            // Buttons Row
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Secondary Button (if provided)
                  if (secondaryButtonText != null &&
                      onSecondaryButtonPressed != null) ...[
                    _buildSecondaryButton(context),
                    SizedBox(width: 16.w),
                  ],

                  // Primary Button
                  if (buttonText != null)
                    _buildPrimaryButton(context, defaultGradient),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrimaryButton(BuildContext context, List<Color> gradient) {
    return GestureDetector(
      onTap: onButtonPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(25.r),
          boxShadow: [
            BoxShadow(
              color: gradient.first.withValues(alpha: 0.3),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.explore_rounded, color: Colors.white, size: 20.r),
            SizedBox(width: 8.w),
            Text(
              buttonText!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSecondaryButton(BuildContext context) {
    return GestureDetector(
      onTap: onSecondaryButtonPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(25.r),
          border: Border.all(
            color: context.isDarkMode ? Colors.white24 : Colors.grey[300]!,
            width: 1.5,
          ),
        ),
        child: Text(
          secondaryButtonText!,
          style: TextStyle(
            color: context.colors.onSurfaceVariant,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

// Extension to easily create not found states based on context
extension NotFoundStateExtension on ModernNotFoundState {
  static ModernNotFoundState fromSearchContext(
    String searchQuery, {
    String? searchType,
    VoidCallback? onRetry,
    VoidCallback? onSecondaryAction,
    String? secondaryButtonText,
  }) {
    final type = searchType?.toLowerCase() ?? '';

    if (type.contains('course') ||
        type.contains('class') ||
        type.contains('lesson')) {
      return ModernNotFoundState.courseSearch(
        onButtonPressed: onRetry,
        onSecondaryButtonPressed: onSecondaryAction,
        secondaryButtonText: secondaryButtonText,
      );
    } else if (type.contains('user') ||
        type.contains('profile') ||
        type.contains('student')) {
      return ModernNotFoundState.user(
        onButtonPressed: onRetry,
        onSecondaryButtonPressed: onSecondaryAction,
        secondaryButtonText: secondaryButtonText,
      );
    } else if (type.contains('category') || type.contains('section')) {
      return ModernNotFoundState.category(
        onButtonPressed: onRetry,
        onSecondaryButtonPressed: onSecondaryAction,
        secondaryButtonText: secondaryButtonText,
      );
    }

    return ModernNotFoundState.generalSearch(
      onButtonPressed: onRetry,
      onSecondaryButtonPressed: onSecondaryAction,
      secondaryButtonText: secondaryButtonText,
    );
  }

  static ModernNotFoundState fromRouteError({
    VoidCallback? onGoHome,
    VoidCallback? onGoBack,
  }) {
    return ModernNotFoundState.page(
      onButtonPressed: onGoHome,
      onSecondaryButtonPressed: onGoBack,
    );
  }
}

// Usage Examples:
/*
// Basic usage
ModernNotFoundState.courseSearch(
  onButtonPressed: () => _searchAgain(),
  onSecondaryButtonPressed: () => _browseAll(),
)

// Custom usage
ModernNotFoundState(
  icon: Icons.book_outlined,
  title: 'Custom Not Found',
  subtitle: 'Custom message here',
  buttonText: 'Custom Action',
  onButtonPressed: () => _customAction(),
  gradientColors: [Color(0xFFE67E22), Color(0xFFF39C12)],
)

// Using extension
ModernNotFoundState.fromSearchContext(
  'Flutter course',
  searchType: 'course',
  onRetry: () => _retry(),
  onSecondaryAction: () => _browse(),
  secondaryButtonText: 'Browse All',
)
*/
