import 'package:flutter/material.dart';

import 'base_app.dart';
import 'core/config/environment_config.dart';
import 'core/routes/app_router.dart';

Future<void> bootstrap({
  required EnvironmentConfig config,
  required bool isProd,
  bool enableDeepLinking = false,
  bool logFcmToken = false,
  bool trackAppVersion = false,
}) async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    BaseApp(
      appRouter: Routers(),
      hasValidSession: false,
      hasSeenOnboarding: false,
      isGuestMode: false,
    ),
  );
}