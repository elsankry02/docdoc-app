import 'package:docdoc_app/core/routing/router.dart';
import 'package:flutter/material.dart';

import '../core/theme/app_theme_data.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemeData.darkTheme,
      theme: AppThemeData.lightTheme,
      themeMode: .light,
    );
  }
}
