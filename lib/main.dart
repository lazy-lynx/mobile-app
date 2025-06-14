import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:tap_n_repeat/l10n/app_localizations.dart';
import 'package:tap_n_repeat/navigation_service.dart';

var logger = Logger();

void main() {
  runZonedGuarded(
    () {
      final navigationService = NavigationService();
      runApp(App(navigationService: navigationService));
    },
    (final err, final stackTrace) => logger.e(err),
  );
}

class App extends StatelessWidget {
  const App({
    required this.navigationService,
    super.key,
  });

  final NavigationService navigationService;

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
      routerConfig: navigationService.router,
      builder: (context, child) => child ?? SizedBox(),
    );
  }
}
