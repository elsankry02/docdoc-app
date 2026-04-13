import 'package:docdoc_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants/app_strings.dart';

abstract class AppThemeData {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    fontFamily: AppStrings.inter,
    brightness: .light,
  );
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    fontFamily: AppStrings.inter,
    brightness: .dark,
  );
}
