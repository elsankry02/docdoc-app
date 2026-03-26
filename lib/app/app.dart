import '../core/theme/app_theme_data.dart';
import 'package:flutter/material.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemeData.darkTheme,
      theme: AppThemeData.lightTheme,
      themeMode: .light,
    );
  }
}
