import 'package:docdoc_app/core/constants/app_strings.dart';
import 'package:flutter/material.dart';

abstract class AppThemeData {
  static final lightTheme = ThemeData(
    fontFamily: AppStrings.inter,
    brightness: .light,
  );
  static final darkTheme = ThemeData(
    fontFamily: AppStrings.inter,
    brightness: .dark,
  );
}
