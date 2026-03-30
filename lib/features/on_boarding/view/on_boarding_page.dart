import 'package:auto_route/annotations.dart';
import 'package:docdoc_app/core/theme/app_colors.dart';
import 'package:docdoc_app/core/widget/default_primary_btn.dart';
import 'package:docdoc_app/features/on_boarding/widget/appbar_logo_widget.dart';
import 'package:docdoc_app/features/on_boarding/widget/image_and_title_widget.dart';
import 'package:docdoc_app/helpers/extensions/extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: context.h * 0.021),
              AppBarLogoWidget(),
              SizedBox(height: context.h * 0.041),
              ImageAndTitleWidget(),
              SizedBox(height: context.h * 0.018),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.h * .032),
                child: Text(
                  "manage_and_schedule_description".tr(),
                  textAlign: .center,
                  maxLines: 2,
                  overflow: .ellipsis,
                  style: context.textTheme.labelLarge?.copyWith(
                    color: AppColors.body,
                  ),
                ),
              ),
              SizedBox(height: context.h * 0.031),
              DefaultPrimaryBtn(
                margin: EdgeInsets.symmetric(horizontal: context.h * .032),
                title: "get_started".tr(),
                borderRadius: BorderRadius.circular(16),
                textStyle: context.textTheme.titleMedium?.copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
