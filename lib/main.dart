import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:my_app/screens/exercise_screen.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/widgets/layout_screen_widget.dart';

var logger = Logger();

void main() {
  runZonedGuarded(
    () {
      runApp(
        const MyApp(),
      );
    },
    (
      final err,
      final stackTrace,
    ) {
      logger.e(err);
    },
  );
}

final GoRouter router = GoRouter(
  initialLocation: '/home',
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    ShellRoute(
      builder: (context, state, child) {
        logger.d(state.fullPath);
        return LayoutScreenWidget(
          pageKey: state.fullPath == '/home'
              ? 0
              : state.fullPath == '/history'
                  ? 1
                  : 2,
          body: child,
        );
      },
      routes: [
        GoRoute(
          name: 'home',
          path: '/home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
          routes: [
            GoRoute(
              name: 'exercise',
              path: 'exercise/:id/:title',
              builder: (BuildContext context, GoRouterState state) {
                return Exercise(
                  title: state.pathParameters['title'] ?? '',
                );
              },
            ),
          ],
        ),
        GoRoute(
          name: 'history',
          path: '/history',
          builder: (BuildContext context, GoRouterState state) {
            return Center(
              child: Text('history'),
            );
          },
        ),
        GoRoute(
          path: '/settings',
          builder: (BuildContext context, GoRouterState state) {
            return Center(
              child: Text('settings'),
            );
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
      builder: (context, child) => child ?? SizedBox(),
    );
  }
}
