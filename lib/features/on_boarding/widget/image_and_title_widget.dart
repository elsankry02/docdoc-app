import 'package:docdoc_app/core/theme/app_colors.dart';
import 'package:docdoc_app/helpers/constants/app_images.dart';
import 'package:docdoc_app/helpers/extensions/extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ImageAndTitleWidget extends StatelessWidget {
  const ImageAndTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: .bottomCenter,
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.white, AppColors.white.withAlpha(0)],
              begin: .bottomCenter,
              end: .topCenter,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset(AppImages.onBoardingDocDocLogo),
        ),
        Text(
          textAlign: .center,
          "best_doctor_appointment_app".tr(),
          style: context.textTheme.headlineLarge?.copyWith(
            color: AppColors.primary100,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
