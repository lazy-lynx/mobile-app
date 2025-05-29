import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_n_repeat/screens/exercise/exercise_screen.dart';
import 'package:tap_n_repeat/screens/history/history_screen.dart';
import 'package:tap_n_repeat/screens/home/home_screen.dart';
import 'package:tap_n_repeat/screens/onboarding/onboarding_screen.dart';
import 'package:tap_n_repeat/screens/settings/settings_screen.dart';
import 'package:tap_n_repeat/widgets/layout_screen_widget.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

class NavigationService {
  NavigationService._internal() {
    router = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: AppRoutes.onboarding.path,
      debugLogDiagnostics: kDebugMode,
      routes: _routes,
    );
  }

  static final NavigationService _instance = NavigationService._internal();
  factory NavigationService() => _instance;

  late final GoRouter router;

  final List<RouteBase> _routes = [
    GoRoute(
      name: AppRoutes.onboarding.name,
      path: AppRoutes.onboarding.path,
      builder: (context, state) => OnboardingScreen(),
    ),
    StatefulShellRoute.indexedStack(
      pageBuilder: (context, state, navigationShell) {
        return NoTransitionPage(
          child: LayoutScreenWidget(
            child: navigationShell,
          ),
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: AppRoutes.home.name,
              path: AppRoutes.home.path,
              builder: (context, state) => HomeScreen(),
              routes: [
                GoRoute(
                  name: AppRoutes.exercise.name,
                  path: AppRoutes.exercise.path,
                  builder: (context, state) => ExerciseScreen(
                    id: state.pathParameters['id'] ?? '',
                  ),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: AppRoutes.history.name,
              path: AppRoutes.history.path,
              builder: (context, state) => HistoryScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: AppRoutes.settings.name,
              path: AppRoutes.settings.path,
              builder: (context, state) => SettingsScreen(),
            ),
          ],
        ),
      ],
    )
  ];

  Future<void> goHome() async => router.goNamed(AppRoutes.home.name);
  Future<void> goHistory() async => router.goNamed(AppRoutes.history.name);
  Future<void> goSettings() async => router.goNamed(AppRoutes.settings.name);
  Future<void> goExercise({
    required String id,
  }) async =>
      router.goNamed(
        AppRoutes.exercise.name,
        pathParameters: {
          'id': id,
        },
      );
}

class AppRoutes {
  static final RouteConfiguration home = RouteConfiguration(
    name: 'home',
    path: '/home',
  );
  static final RouteConfiguration history = RouteConfiguration(
    name: 'history',
    path: '/history',
  );
  static final RouteConfiguration settings = RouteConfiguration(
    name: 'settings',
    path: '/settings',
  );
  static final RouteConfiguration exercise = RouteConfiguration(
    name: 'exercise',
    path: 'exercise/:id',
  );
  static final RouteConfiguration onboarding = RouteConfiguration(
    name: 'onboarding',
    path: '/onboarding',
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
