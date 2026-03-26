import 'package:flutter/material.dart';

import '../../helpers/constants/app_strings.dart';

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
