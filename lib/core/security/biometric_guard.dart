import 'package:flutter/material.dart';
import '../di/dependency_injection.dart';
import 'local_auth_service.dart';
import '../../features/auth/ui/logic/auth_cubit.dart';
import '../utils/extensions.dart';
import '../../generated/l10n.dart';

class BiometricGuard {
  static Future<bool> verify(BuildContext context, {required String reason}) async {
    final service = sl<LocalAuthService>();
    final available = await service.isAvailable;
    if (!available) return true;

    final result = await service.authenticate(reason: reason);
    switch (result) {
      case BiometricResult.success:
        return true;
      case BiometricResult.unavailable:
        return true;
      case BiometricResult.lockedOut:
        if (context.mounted) {
          context.showErrorSnackBar(S.of(context).biometric_locked_out);
          sl<AuthCubit>().logout();
        }
        return false;
      case BiometricResult.userCanceled:
        return false;
      case BiometricResult.failed:
        if (context.mounted) {
          context.showErrorSnackBar(S.of(context).biometric_failed);
        }
        return false;
    }
  }
}