import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/screens/home/home_screen.dart';
import 'package:ui_kit/widgets/bottom_bar/bottom_bar.dart';

class NavigationService {
  NavigationService._internal() {
    router = GoRouter(
      initialLocation: AppRoutes.home.path,
      debugLogDiagnostics: kDebugMode,
      routes: _routes,
    );
  }

  static final NavigationService _instance = NavigationService._internal();
  factory NavigationService() => _instance;

  late final GoRouter router;

  final List<RouteBase> _routes = [
    ShellRoute(
      builder: (
        context,
        state,
        child,
      ) {
        return Scaffold(
          body: child,
          bottomNavigationBar: CustomBottomNavigationBar(),
        );
      },
      routes: [
        GoRoute(
          name: AppRoutes.home.name,
          path: AppRoutes.home.path,
          builder: (context, state) => HomeScreen(),
        ),
      ],
    ),
  ];

  Future<void> goHome() async => router.goNamed(AppRoutes.home.name);
}

class AppRoutes {
  static final RouteConfiguration home = RouteConfiguration(
    name: 'home',
    path: '/',
  );
}

class RouteConfiguration {
  const RouteConfiguration({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;
}
