import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../core/routing/router.dart';
import '../core/theme/app_theme_data.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router.config(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      darkTheme: AppThemeData.darkTheme,
      theme: AppThemeData.lightTheme,
      themeMode: .light,
    );
  }
}
