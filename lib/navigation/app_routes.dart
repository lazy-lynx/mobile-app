import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planks_and_plants/features/plank/plank_screen.dart';
import 'package:planks_and_plants/features/planks/planks_screen.dart';
import 'package:planks_and_plants/widgets/layouts/layout_screen_widget.dart';

class AppRoutes {
  static final RouteConfiguration planks = RouteConfiguration(
    name: 'planks',
    path: '/planks',
  );
  static final RouteConfiguration plank = RouteConfiguration(
    name: 'plank',
    path: 'plank',
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

final List<RouteBase> routes = [
  StatefulShellRoute.indexedStack(
    pageBuilder: (context, state, navigationShell) {
      return CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
        child: LayoutScreenWidget(child: navigationShell),
      );
    },
    branches: [
      StatefulShellBranch(
        routes: [
          GoRoute(
            name: AppRoutes.planks.name,
            path: AppRoutes.planks.path,
            builder: (context, state) => PlanksScreen(),
            routes: [
              GoRoute(
                name: AppRoutes.plank.name,
                path: AppRoutes.plank.path,
                builder: (context, state) => PlankScreen(
                  args: state.extra as PlankScreenArgs,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  )
];
