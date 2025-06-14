import 'package:collection/collection.dart';
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
          padding: EdgeInsets.all(16.0),
          color: AppColors.color99001F,
          child: SafeArea(
            child: Text(
              "Tap'n'Repeat",
              style: AppTextStyles.roboto20w700,
            ),
          ),
        ),
      ),
      body: child,
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedTab: Menu.values.firstWhereOrNull((e) => e.name == navigation.router.state.name) ?? Menu.home,
        onTapHome: () async => navigation.goHome(),
        onTapHistory: () async => navigation.goHistory(),
        onTapSettings: () async => navigation.goSettings(),
      ),
    );
  }
}
