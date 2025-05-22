import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings Screen',
        style: TextStyle(
          color: AppColors.color99001F,
        ),
      ),
    );
  }
}
