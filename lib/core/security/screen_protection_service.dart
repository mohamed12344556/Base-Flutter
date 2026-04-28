import 'dart:io';

import 'package:flutter_windowmanager_plus/flutter_windowmanager_plus.dart';

abstract interface class ScreenProtectionService {
  Future<void> enable();
  Future<void> disable();
}

class ScreenProtectionServiceImpl implements ScreenProtectionService {
  @override
  Future<void> enable() async {
    if (Platform.isAndroid) {
      await FlutterWindowManagerPlus.addFlags(
        FlutterWindowManagerPlus.FLAG_SECURE,
      );
    }
  }

  @override
  Future<void> disable() async {
    if (Platform.isAndroid) {
      await FlutterWindowManagerPlus.clearFlags(
        FlutterWindowManagerPlus.FLAG_SECURE,
      );
    }
  }
}