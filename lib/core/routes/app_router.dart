import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/ui/logic/auth_cubit.dart';
import '../../features/auth/ui/views/forget_password_view.dart';
import '../../features/auth/ui/views/login_view.dart';
import '../../features/auth/ui/views/otp_authenticate_view.dart';
import '../../features/auth/ui/views/reset_password_view.dart';
import '../../features/auth/ui/views/sign_up_view.dart';
import '../../features/posts_example/posts_example.dart';
import '../core.dart';

class Routers {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case AppRoutes.splashView:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Splash'))),
        );

      case AppRoutes.onboardingView:
        return MaterialPageRoute(
          builder: (_) => const PostsExampleView(),
        );

      case AppRoutes.loginView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: sl<AuthCubit>(),
            child: const LogInView(),
          ),
        );

      case AppRoutes.registerView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: sl<AuthCubit>(),
            child: const SignUpView(),
          ),
        );

      case AppRoutes.otpAuthenticateView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: sl<AuthCubit>(),
            child: OTPAuthenticateView(
              arguments: arguments! as Map<String, dynamic>,
            ),
          ),
        );

      case AppRoutes.forgetPasswordView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: sl<AuthCubit>(),
            child: const ForgotPasswordView(),
          ),
        );

      case AppRoutes.resetPasswordView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: sl<AuthCubit>(),
            child: const ResetPasswordView(),
          ),
        );

      case AppRoutes.hostView:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Host View'))),
        );

      case AppRoutes.homeView:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Home View'))),
        );

      case AppRoutes.notificationsView:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Notifications'))),
        );

      case AppRoutes.profileSettingsView:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Profile'))),
        );

      case AppRoutes.settingsView:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Settings'))),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('Route: ${settings.name}')),
          ),
        );
    }
  }
}