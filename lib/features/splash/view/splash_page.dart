import 'package:auto_route/auto_route.dart';
import 'package:docdoc_app/core/theme/app_colors.dart';
import 'package:docdoc_app/helpers/constants/app_images.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Image.asset(AppImages.flutterNativeSplash),
    );
  }
}
