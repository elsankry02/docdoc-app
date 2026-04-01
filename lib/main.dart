import 'app/app.dart';
import 'app/env.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      path: localizationPath,
      supportedLocales: [Locale('ar'), Locale('en')],
      child: const DocDocApp(),
    ),
  );
}
