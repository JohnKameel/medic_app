import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medic_app/core/di/dependency_injection.dart';
import 'package:medic_app/features/home/presentation/view/screens/home_screen.dart';
import 'package:medic_app/features/login/presentation/view/screens/login_screen.dart';
import 'package:medic_app/features/login/presentation/view_model/login_cubit.dart';
import 'package:medic_app/features/onboarding/presentation/view/screens/onboarding_screen.dart';

class RouterApp {
  static const String onBoarding = '/onboarding';
  static const String login = '/login';
  static const String home = '/home';

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
          return BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen()
          );
        },
      ),
      GoRoute(
        path: home,
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
    ],
  );
}
