import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/screens/history/history_screen.dart';
import 'package:my_app/screens/home/home_screen.dart';
import 'package:my_app/screens/settings/settings_screen.dart';
import 'package:my_app/widgets/layout_screen_widget.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

class NavigationService {
  NavigationService._internal() {
    router = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: AppRoutes.home.path,
      debugLogDiagnostics: kDebugMode,
      routes: _routes,
    );
  }

  static final NavigationService _instance = NavigationService._internal();
  factory NavigationService() => _instance;

  late final GoRouter router;

  final List<RouteBase> _routes = [
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
            ),
          ],
        ),
        StatefulShellBranch(routes: [
          GoRoute(
            name: AppRoutes.history.name,
            path: AppRoutes.history.path,
            builder: (context, state) => HistoryScreen(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            name: AppRoutes.settings.name,
            path: AppRoutes.settings.path,
            builder: (context, state) => SettingsScreen(),
          ),
        ]),
      ],
    )
  ];

  Future<void> goHome() async => router.goNamed(AppRoutes.home.name);
  Future<void> goHistory() async => router.goNamed(AppRoutes.history.name);
  Future<void> goSettings() async => router.goNamed(AppRoutes.settings.name);
}

class AppRoutes {
  static final RouteConfiguration home = RouteConfiguration(
    name: 'home',
    path: '/',
  );
  static final RouteConfiguration history = RouteConfiguration(
    name: 'history',
    path: '/history',
  );
  static final RouteConfiguration settings = RouteConfiguration(
    name: 'settings',
    path: '/settings',
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
