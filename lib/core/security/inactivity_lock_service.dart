import 'dart:async';

class InactivityLockService {
  static const _lockDuration = Duration(minutes: 5);
  Timer? _timer;
  bool _requiresAuth = false;

  void onBackground() {
    _timer?.cancel();
    _timer = Timer(_lockDuration, () {
      _requiresAuth = true;
    });
  }

  void onForeground() {
    _timer?.cancel();
  }

  bool get requiresAuth => _requiresAuth;

  void reset() {
    _requiresAuth = false;
  }

  void dispose() {
    _timer?.cancel();
  }
}