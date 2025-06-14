import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_kit/src/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle roboto30w700 = GoogleFonts.roboto(
    color: AppColors.color99001F,
    fontSize: 30,
    fontWeight: FontWeight.w700,
    letterSpacing: 3.0,
    height: 1,
    shadows: [
      AppShadows.shadow1,
    ],
  );

  static TextStyle roboto20w700 = GoogleFonts.roboto(
    color: AppColors.colorF2F2F7,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.0,
    height: 1,
  );

  static TextStyle roboto26w400 = GoogleFonts.roboto(
    color: AppColors.color99001F,
    fontSize: 26,
    fontWeight: FontWeight.w400,
    letterSpacing: 3.0,
    height: 1,
    shadows: [
      AppShadows.shadow2,
    ],
  );
}
