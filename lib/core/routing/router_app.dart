import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medic_app/features/login/presentation/view/screens/login_screen.dart';
import 'package:medic_app/features/onboarding/presentation/view/screens/onboarding_screen.dart';

class RouterApp {
  static const String onBoarding = '/onboarding';
  static const String login = '/login';
  static const String register = '/register';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String about = '/about';

  static GoRouter goRoute = GoRouter(
    initialLocation: onBoarding,
    routes: [
      GoRoute(
        path: onBoarding,
        builder: (context, state) {
          return const OnboardingScreen();
        },
      ),
      GoRoute(
        path: login,
        builder: (context, state) {
          return const LoginScreen();
        },
      ),
    ],
  );
}
