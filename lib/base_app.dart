import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/core.dart';

class BaseApp extends StatefulWidget {
  final Routers appRouter;
  final bool hasValidSession;
  final bool hasSeenOnboarding;
  final bool isGuestMode;

  const BaseApp({
    super.key,
    required this.appRouter,
    required this.hasValidSession,
    required this.hasSeenOnboarding,
    this.isGuestMode = false,
  });

  @override
  State<BaseApp> createState() => _BaseAppState();
}

class _BaseAppState extends State<BaseApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: _getInitialRoute(),
        onGenerateRoute: widget.appRouter.generateRoute,
      ),
    );
  }

  String _getInitialRoute() {
    log('Determining initial route...');
    log('hasSeenOnboarding: ${widget.hasSeenOnboarding}');
    log('hasValidSession: ${widget.hasValidSession}');
    log('isGuestMode: ${widget.isGuestMode}');

    if (!widget.hasSeenOnboarding) {
      log('Showing onboarding');
      return AppRoutes.onboardingView;
    }

    if (widget.hasValidSession) {
      log('Showing host view');
      return AppRoutes.hostView;
    }

    if (widget.isGuestMode) {
      log('Showing host view (guest mode)');
      return AppRoutes.hostView;
    }

    log('Showing login view');
    return AppRoutes.loginView;
  }
}