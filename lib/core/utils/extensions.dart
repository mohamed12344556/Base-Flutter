import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '../services/toast_service.dart';
import '../widgets/modern_dialogs.dart';
import 'number_utils.dart';

extension BuildContextExtensions on BuildContext {
  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }

  bool get isArabic {
    return Localizations.localeOf(this).languageCode == 'ar';
  }

  // Theme extensions
  ColorScheme get colors => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;

  // ===== Navigation Methods (Global Router) =====

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
    required RoutePredicate predicate,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop<T>([T? result]) => Navigator.of(this).pop(result);

  // Modern Dialog methods using ModernDialogs
  Future<bool?> showConfirmationDialog({
    required String title,
    required String message,
    String confirmText = 'Confirm',
    String cancelText = 'Cancel',
    IconData? icon,
    List<Color>? iconGradient,
    Color? confirmColor,
    bool barrierDismissible = false,
  }) {
    return ModernDialogs.showConfirmationDialog(
      context: this,
      title: title,
      message: message,
      confirmText: confirmText,
      cancelText: cancelText,
      icon: icon,
      iconGradient: iconGradient,
      confirmColor: confirmColor,
      barrierDismissible: barrierDismissible,
    );
  }

  Future<bool?> showDeleteConfirmationDialog({
    required String title,
    required String message,
    String confirmText = 'Delete',
    String cancelText = 'Cancel',
    bool barrierDismissible = false,
  }) {
    return ModernDialogs.showDeleteConfirmationDialog(
      context: this,
      title: title,
      message: message,
      confirmText: confirmText,
      cancelText: cancelText,
      barrierDismissible: barrierDismissible,
    );
  }

  Future<void> showSuccessDialog({
    required String title,
    required String message,
    String buttonText = 'Great!',
    VoidCallback? onPressed,
  }) {
    return ModernDialogs.showSuccessDialog(
      context: this,
      title: title,
      message: message,
      buttonText: buttonText,
      onPressed: onPressed,
    );
  }

  Future<bool?> showExitConfirmationDialog({
    String title = 'Exit App',
    String message = 'Do you want to exit the app?',
    String confirmText = 'Exit',
    String cancelText = 'Cancel',
    bool barrierDismissible = false,
  }) {
    return ModernDialogs.showExitConfirmationDialog(
      context: this,
      title: title,
      message: message,
      confirmText: confirmText,
      cancelText: cancelText,
      barrierDismissible: barrierDismissible,
    );
  }

  Future<void> showErrorDialog({
    required String title,
    required String message,
    String buttonText = 'OK',
    VoidCallback? onPressed,
  }) {
    return ModernDialogs.showErrorDialog(
      context: this,
      title: title,
      message: message,
      buttonText: buttonText,
      onPressed: onPressed,
    );
  }

  Future<void> showModernLoadingDialog({String? message}) {
    return ModernDialogs.showLoadingDialog(context: this, message: message);
  }

  void hideLoadingDialog() {
    Navigator.of(this).pop();
  }

  Future<void> showSnackBarAsDialog({
    required String message,
    required bool isError,
    required void Function()? onPressed,
  }) async {
    if (isError) {
      return showErrorDialog(
        title: 'Error',
        message: message,
        buttonText: 'Got it',
        onPressed: onPressed,
      );
    } else {
      return showSuccessDialog(
        title: 'Success',
        message: message,
        buttonText: 'Got it',
        onPressed: onPressed,
      );
    }
  }

  // Enhanced SnackBar methods using AwesomeSnackbarContent
  void showErrorSnackBar(String message, {String title = 'Error'}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: title,
            message: message,
            contentType: ContentType.failure,
          ),
        ),
      );
  }

  void showSuccessSnackBar(String message, {String title = 'Success'}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: title,
            message: message,
            contentType: ContentType.success,
          ),
        ),
      );
  }

  void showInfoSnackBar(String message, {String title = 'Info'}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: title,
            message: message,
            contentType: ContentType.help,
          ),
        ),
      );
  }

  void showWarningSnackBar(String message, {String title = 'Warning'}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: title,
            message: message,
            contentType: ContentType.warning,
          ),
        ),
      );
  }

  void showSnackBar(String message, {String title = 'Notice'}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: title,
            message: message,
            contentType: ContentType.help,
          ),
        ),
      );
  }

  // ===== Toast Notification Methods (using toastification) =====

  ToastificationItem showSuccessToast(
    String message, {
    String? title,
    Duration? duration,
    VoidCallback? onTap,
  }) {
    return ToastService.showSuccess(
      context: this,
      message: message,
      title: title,
      duration: duration,
      onTap: onTap,
    );
  }

  ToastificationItem showErrorToast(
    String message, {
    String? title,
    Duration? duration,
    VoidCallback? onTap,
  }) {
    return ToastService.showError(
      context: this,
      message: message,
      title: title,
      duration: duration,
      onTap: onTap,
    );
  }

  ToastificationItem showInfoToast(
    String message, {
    String? title,
    Duration? duration,
    VoidCallback? onTap,
  }) {
    return ToastService.showInfo(
      context: this,
      message: message,
      title: title,
      duration: duration,
      onTap: onTap,
    );
  }

  ToastificationItem showWarningToast(
    String message, {
    String? title,
    Duration? duration,
    VoidCallback? onTap,
  }) {
    return ToastService.showWarning(
      context: this,
      message: message,
      title: title,
      duration: duration,
      onTap: onTap,
    );
  }

  ToastificationItem showLoadingToast(String message, {String? title}) {
    return ToastService.showLoading(
      context: this,
      message: message,
      title: title,
    );
  }

  ToastificationItem showCustomToast(
    String message, {
    String? title,
    Duration? duration,
    Color? backgroundColor,
    Color? foregroundColor,
    IconData? icon,
    VoidCallback? onTap,
  }) {
    return ToastService.showCustom(
      context: this,
      message: message,
      title: title,
      duration: duration,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      icon: icon,
      onTap: onTap,
    );
  }

  void dismissAllToasts() {
    ToastService.dismissAll();
  }

  void showActionSnackBar({
    required String message,
    required String actionLabel,
    required VoidCallback onActionPressed,
    Color? backgroundColor,
    IconData? icon,
  }) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Row(
            children: [
              if (icon != null) ...[
                Icon(icon, color: Colors.white),
                const SizedBox(width: 8),
              ],
              Expanded(
                child: Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: backgroundColor ?? const Color(0xFF4A90E2),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          duration: const Duration(seconds: 4),
          elevation: 6,
          action: SnackBarAction(
            label: actionLabel,
            textColor: Colors.white,
            backgroundColor: Colors.white.withValues(alpha: 0.2),
            onPressed: onActionPressed,
          ),
        ),
      );
  }

  Future<T?> showCustomBottomSheet<T>({
    required Widget Function(BuildContext) builder,
    bool isScrollControlled = false,
    bool isDismissible = true,
    bool enableDrag = true,
    Color? backgroundColor,
  }) {
    return showModalBottomSheet<T>(
      context: this,
      builder: builder,
      isScrollControlled: isScrollControlled,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      backgroundColor: backgroundColor,
    );
  }
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}

/// Number Extensions for Arabic localization
extension NumberLocalization on num {
  String toArabic() => NumberUtils.toArabicDigits(toString());

  String toPrice({
    String currency = '\$',
    int decimals = 2,
    bool isArabic = false,
  }) {
    return NumberUtils.formatPrice(
      toDouble(),
      currency: currency,
      decimalPlaces: decimals,
      isArabic: isArabic,
    );
  }

  String toPercentage({int decimals = 0, bool isArabic = false}) {
    return NumberUtils.formatPercentage(
      toDouble(),
      decimalPlaces: decimals,
      isArabic: isArabic,
    );
  }

  String toFormatted({bool isArabic = false}) {
    return NumberUtils.formatWithSeparator(toInt(), isArabic: isArabic);
  }
}

extension StringNumberConversion on String {
  String normalizeDigits() => NumberUtils.normalizeDigits(this);
  double? toDoubleSafe() => NumberUtils.parseDouble(this);
  int? toIntSafe() => NumberUtils.parseInt(this);
}
