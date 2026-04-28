import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
import '../core.dart';

class ModernErrorState extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? subtitle;
  final String? buttonText;
  final VoidCallback? onButtonPressed;
  final List<Color>? gradientColors;
  final double? iconSize;
  final double? containerSize;
  final bool showRetryButton;
  final String? secondaryButtonText;
  final VoidCallback? onSecondaryButtonPressed;

  const ModernErrorState({
    super.key,
    this.icon,
    required this.title,
    this.subtitle,
    this.buttonText,
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.showRetryButton = true,
    this.secondaryButtonText,
    this.onSecondaryButtonPressed,
  });

  const ModernErrorState.network({
    super.key,
    this.buttonText = 'Try Again',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText,
    this.onSecondaryButtonPressed,
  }) : icon = Icons.wifi_off_rounded,
       title = 'No Internet Connection',
       subtitle = 'Please check your internet connection\nand try again',
       showRetryButton = true;

  const ModernErrorState.server({
    super.key,
    this.buttonText = 'Retry',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText,
    this.onSecondaryButtonPressed,
  }) : icon = Icons.cloud_off_rounded,
       title = 'Server Error',
       subtitle = 'Something went wrong on our end.\nWe\'re working to fix it',
       showRetryButton = true;

  const ModernErrorState.timeout({
    super.key,
    this.buttonText = 'Try Again',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText,
    this.onSecondaryButtonPressed,
  }) : icon = Icons.access_time_rounded,
       title = 'Request Timeout',
       subtitle = 'The request took too long to complete.\nPlease try again',
       showRetryButton = true;

  const ModernErrorState.notFound({
    super.key,
    this.buttonText = 'Go Back',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText,
    this.onSecondaryButtonPressed,
  }) : icon = Icons.search_off_rounded,
       title = 'Not Found',
       subtitle = 'The content you\'re looking for\ncouldn\'t be found',
       showRetryButton = true;

  const ModernErrorState.unauthorized({
    super.key,
    this.buttonText = 'Login',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText,
    this.onSecondaryButtonPressed,
  }) : icon = Icons.lock_outline_rounded,
       title = 'Access Denied',
       subtitle = 'You don\'t have permission to access\nthis content',
       showRetryButton = true;

  const ModernErrorState.generic({
    super.key,
    this.buttonText = 'Try Again',
    this.onButtonPressed,
    this.gradientColors,
    this.iconSize = 60,
    this.containerSize = 120,
    this.secondaryButtonText,
    this.onSecondaryButtonPressed,
  }) : icon = Icons.error_outline_rounded,
       title = 'Something Went Wrong',
       subtitle = 'We encountered an unexpected error.\nPlease try again later',
       showRetryButton = true;

  @override
  Widget build(BuildContext context) {
    final defaultGradient =
        gradientColors ??
        [context.colors.error, context.colors.error.withValues(alpha: 0.8)];

    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(32.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
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
                      icon ?? Icons.error_outline_rounded,
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
                  height: 1.5,
                ),
              ),
            ],
            SizedBox(height: 40.h),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (secondaryButtonText != null &&
                      onSecondaryButtonPressed != null) ...[
                    _buildSecondaryButton(context),
                    SizedBox(width: 16.w),
                  ],
                  if (showRetryButton && buttonText != null)
                    _buildPrimaryButton(context, defaultGradient),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _resolveTitle(BuildContext context, String title) {
    final s = S.of(context);
    switch (title) {
      case 'No Internet Connection':
        return s.error_no_internet;
      case 'Server Error':
        return s.error_server;
      case 'Request Timeout':
        return s.error_timeout;
      case 'Something Went Wrong':
        return s.error_generic;
      case 'Not Found':
        return s.error_not_found;
      case 'Access Denied':
        return s.error_unauthorized;
      default:
        return title;
    }
  }

  String _resolveSubtitle(BuildContext context, String subtitle) {
    final s = S.of(context);
    switch (subtitle) {
      case 'Please check your internet connection\nand try again':
        return s.error_no_internet_subtitle;
      case 'Something went wrong on our end.\nWe\'re working to fix it':
        return s.error_server_subtitle;
      case 'The request took too long to complete.\nPlease try again':
        return s.error_timeout_subtitle;
      case 'We encountered an unexpected error.\nPlease try again later':
        return s.error_generic_subtitle;
      default:
        return subtitle;
    }
  }

  IconData _resolveButtonIcon() {
    final text = buttonText?.toLowerCase() ?? '';
    if (text.contains('back') || text.contains('رجوع')) {
      return Icons.arrow_back_rounded;
    }
    if (text.contains('login') || text.contains('تسجيل')) {
      return Icons.login_rounded;
    }
    return Icons.refresh_rounded;
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
            Icon(_resolveButtonIcon(), color: Colors.white, size: 20.r),
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

extension ErrorStateExtension on ModernErrorState {
  static ModernErrorState fromException(
    Exception exception, {
    VoidCallback? onRetry,
    VoidCallback? onSecondaryAction,
    String? secondaryButtonText,
  }) {
    if (exception.toString().contains('SocketException') ||
        exception.toString().contains('NetworkException')) {
      return ModernErrorState.network(
        onButtonPressed: onRetry,
        onSecondaryButtonPressed: onSecondaryAction,
        secondaryButtonText: secondaryButtonText,
      );
    } else if (exception.toString().contains('TimeoutException')) {
      return ModernErrorState.timeout(
        onButtonPressed: onRetry,
        onSecondaryButtonPressed: onSecondaryAction,
        secondaryButtonText: secondaryButtonText,
      );
    } else if (exception.toString().contains('401') ||
        exception.toString().contains('Unauthorized')) {
      return ModernErrorState.unauthorized(
        onButtonPressed: onRetry,
        onSecondaryButtonPressed: onSecondaryAction,
        secondaryButtonText: secondaryButtonText,
      );
    } else if (exception.toString().contains('404') ||
        exception.toString().contains('Not Found')) {
      return ModernErrorState.notFound(
        onButtonPressed: onRetry,
        onSecondaryButtonPressed: onSecondaryAction,
        secondaryButtonText: secondaryButtonText,
      );
    } else if (exception.toString().contains('500') ||
        exception.toString().contains('Server')) {
      return ModernErrorState.server(
        onButtonPressed: onRetry,
        onSecondaryButtonPressed: onSecondaryAction,
        secondaryButtonText: secondaryButtonText,
      );
    }
    return ModernErrorState.generic(
      onButtonPressed: onRetry,
      onSecondaryButtonPressed: onSecondaryAction,
      secondaryButtonText: secondaryButtonText,
    );
  }

  static ModernErrorState fromErrorMessage(
    String? errorMessage, {
    VoidCallback? onRetry,
    VoidCallback? onSecondaryAction,
    String? secondaryButtonText,
  }) {
    final message = errorMessage?.toLowerCase() ?? '';
    if (message.contains('network') ||
        message.contains('internet') ||
        message.contains('connection') ||
        message == 'error_network') {
      return ModernErrorState.network(
        onButtonPressed: onRetry,
        onSecondaryButtonPressed: onSecondaryAction,
        secondaryButtonText: secondaryButtonText,
      );
    } else if (message.contains('timeout') ||
        message.contains('time out') ||
        message == 'error_timeout') {
      return ModernErrorState.timeout(
        onButtonPressed: onRetry,
        onSecondaryButtonPressed: onSecondaryAction,
        secondaryButtonText: secondaryButtonText,
      );
    } else if (message.contains('unauthorized') ||
        message.contains('not authorized') ||
        message.contains('401') ||
        message == 'error_auth') {
      return ModernErrorState.unauthorized(
        onButtonPressed: onRetry,
        onSecondaryButtonPressed: onSecondaryAction,
        secondaryButtonText: secondaryButtonText,
      );
    } else if (message.contains('not found') ||
        message.contains('404') ||
        message == 'error_not_found') {
      return ModernErrorState.notFound(
        onButtonPressed: onRetry,
        onSecondaryButtonPressed: onSecondaryAction,
        secondaryButtonText: secondaryButtonText,
      );
    } else if (message.contains('server') ||
        message.contains('500') ||
        message.contains('internal error') ||
        message == 'error_server') {
      return ModernErrorState.server(
        onButtonPressed: onRetry,
        onSecondaryButtonPressed: onSecondaryAction,
        secondaryButtonText: secondaryButtonText,
      );
    }
    return ModernErrorState.generic(
      onButtonPressed: onRetry,
      onSecondaryButtonPressed: onSecondaryAction,
      secondaryButtonText: secondaryButtonText,
    );
  }

  static ModernErrorState fromError(
    ApiErrorModel error, {
    VoidCallback? onRetry,
    VoidCallback? onSecondaryAction,
    String? secondaryButtonText,
  }) => fromApiError(
    error,
    onRetry: onRetry,
    onSecondaryAction: onSecondaryAction,
    secondaryButtonText: secondaryButtonText,
  );

  static ModernErrorState fromApiError(
    ApiErrorModel error, {
    VoidCallback? onRetry,
    VoidCallback? onSecondaryAction,
    String? secondaryButtonText,
  }) {
    switch (error.type) {
      case ApiErrorType.network:
        return ModernErrorState.network(
          onButtonPressed: onRetry,
          onSecondaryButtonPressed: onSecondaryAction,
          secondaryButtonText: secondaryButtonText,
        );
      case ApiErrorType.auth:
        return ModernErrorState.unauthorized(
          onButtonPressed: onRetry,
          onSecondaryButtonPressed: onSecondaryAction,
          secondaryButtonText: secondaryButtonText,
        );
      case ApiErrorType.notFound:
        return ModernErrorState.notFound(
          onButtonPressed: onRetry,
          onSecondaryButtonPressed: onSecondaryAction,
          secondaryButtonText: secondaryButtonText,
        );
      case ApiErrorType.server:
      case ApiErrorType.validation:
      case ApiErrorType.unknown:
        return ModernErrorState.server(
          onButtonPressed: onRetry,
          onSecondaryButtonPressed: onSecondaryAction,
          secondaryButtonText: secondaryButtonText,
        );
    }
  }
}
