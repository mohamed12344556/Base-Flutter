import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

enum BiometricResult { success, failed, unavailable, lockedOut, userCanceled }

abstract interface class LocalAuthService {
  Future<bool> get isAvailable;
  Future<BiometricResult> authenticate({required String reason});
}

class LocalAuthServiceImpl implements LocalAuthService {
  LocalAuthServiceImpl() : _auth = LocalAuthentication();

  final LocalAuthentication _auth;

  @override
  Future<bool> get isAvailable async {
    final canCheck = await _auth.canCheckBiometrics;
    final availableBiometrics = await _auth.getAvailableBiometrics();
    return canCheck && availableBiometrics.isNotEmpty;
  }

  @override
  Future<BiometricResult> authenticate({required String reason}) async {
    try {
      final didAuthenticate = await _auth.authenticate(
        localizedReason: reason,
        options: const AuthenticationOptions(biometricOnly: true),
      );
      return didAuthenticate ? BiometricResult.success : BiometricResult.failed;
    } on PlatformException catch (e) {
      switch (e.code) {
        case 'LockedOut':
        case 'PermanentlyLockedOut':
          return BiometricResult.lockedOut;
        case 'NotAvailable':
        case 'NotEnrolled':
          return BiometricResult.unavailable;
        case 'UserCanceled':
          return BiometricResult.userCanceled;
        default:
          return BiometricResult.failed;
      }
    }
  }
}
