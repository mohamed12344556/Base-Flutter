import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

class UpdateService {
  UpdateService._();

  static Widget wrapWithSoftUpdate({
    required Widget child,
    required BuildContext context,
  }) {
    return UpgradeAlert(child: child);
  }
}
