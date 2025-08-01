import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:planks_and_plants/l10n/app_localizations.dart';
import 'package:planks_and_plants/navigation/app_routes.dart';

var logger = Logger();
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoutes.planks.path,
  debugLogDiagnostics: kDebugMode,
  routes: routes,
);

void main() {
  runZonedGuarded(
    () {
      runApp(App());
    },
    (final err, final stackTrace) => logger.e(err),
  );
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
      builder: (context, child) => child ?? SizedBox(),
    );
  }
}
