import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:stylek_app/core/routes/routes.dart';
import 'package:stylek_app/features/auth/page/login_screen.dart';
import 'package:stylek_app/features/auth/page/register_screen.dart';
import 'package:stylek_app/features/forgot_password/page/forgot_password_screen.dart';
import 'package:stylek_app/features/new_password/page/new_password_screen.dart';
import 'package:stylek_app/features/onbording/page/onboarding_screen.dart';
import 'package:stylek_app/features/splash/page/splash_screen.dart';
import 'package:stylek_app/features/verification_code/page/verification_screen.dart';

var globalContext = GlobalKey<NavigatorState>();

class AppRouter {
  static GoRouter routes = GoRouter(
    navigatorKey: globalContext,
    initialLocation: Routes.splash,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) => const SplashScreen(),
      ),

      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),

      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginScreen(),
      ),

      GoRoute(
        path: Routes.signup,
        builder: (context, state) => const RegisterScreen(),
      ),

      GoRoute(
        path: Routes.forgotPassword,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),

      GoRoute(
        path: Routes.verification,
        builder: (context, state) => const VerificationScreen(),
      ),

      GoRoute(
        path: Routes.newPassword,
        builder: (context, state) => const NewPasswordScreen(),
      ),

      
    ],
  );
}
