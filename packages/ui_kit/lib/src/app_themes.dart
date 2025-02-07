import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AppThemes {
  AppThemes._();

  static const CupertinoThemeData defaultCupertinoAppTheme = CupertinoThemeData(
    primaryColor: AppColors.error,
    textTheme: CupertinoTextThemeData(),
  );

  static ThemeData defaultMaterialAppTheme = ThemeData(
    primaryColor: AppColors.error,
    textTheme: const TextTheme(),
  );
}
