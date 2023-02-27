import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

abstract class CustomTheme {
  static ThemeData lightTheme() => ThemeData.light();
  static ThemeData darkTheme() => ThemeData(
        primaryColor: AppColors.primaryColor,
        highlightColor: AppColors.secondaryColor,
        scaffoldBackgroundColor: AppColors.scaffoldColor,
        fontFamily: 'Poppins',
      );
}
