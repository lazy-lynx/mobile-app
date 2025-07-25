import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class LayoutScreenWidget extends StatelessWidget {
  const LayoutScreenWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          padding: EdgeInsets.all(16.0),
          color: AppColors.color99001F,
          child: SafeArea(
            child: Text(
              'Planks&Plants',
              style: AppTextStyles.roboto20w700,
            ),
          ),
        ),
      ),
      body: child,
    );
  }
}
