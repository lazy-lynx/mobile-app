part of 'app_colors.dart';

class AppShadows {
  AppShadows._();

  static BoxShadow shadow1 = BoxShadow(
    offset: Offset(0.0, 20.0),
    blurRadius: 20.0,
    spreadRadius: 0.0,
    color: AppColors.color3B0099.withAlpha(46),
  );

  static BoxShadow shadow2 = BoxShadow(
    offset: Offset(0.0, 10.0),
    blurRadius: 20.0,
    spreadRadius: 0.0,
    color: AppColors.color3B0099.withAlpha(46),
  );
}
