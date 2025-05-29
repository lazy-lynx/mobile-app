import 'package:flutter/material.dart';
import 'package:tap_n_repeat/navigation_service.dart';
import 'package:ui_kit/ui_kit.dart';

class LayoutScreenWidget extends StatelessWidget {
  const LayoutScreenWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final NavigationService navigation = NavigationService();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          height: 80.0,
          color: AppColors.color99001F.withAlpha(20),
          child: SafeArea(
            child: Center(
              child: Text(
                "Tap'n'Repeat",
                style: TextStyle(color: AppColors.color99001F),
              ),
            ),
          ),
        ),
      ),
      body: child,
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedTab: navigation.router.state.path! == '/'
            ? Menu.home
            : navigation.router.state.path!.contains('/history')
                ? Menu.history
                : Menu.settings,
        onTapHome: () async => navigation.goHome(),
        onTapHistory: () async => navigation.goHistory(),
        onTapSettings: () async => navigation.goSettings(),
      ),
    );
  }
}
