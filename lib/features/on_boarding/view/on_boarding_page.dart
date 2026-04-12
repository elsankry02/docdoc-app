import 'package:auto_route/auto_route.dart';
import 'package:docdoc_app/core/routing/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/widget/default_primary_btn.dart';
import '../../../helpers/extensions/extensions.dart';
import '../widget/appbar_logo_widget.dart';
import '../widget/image_and_title_widget.dart';

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
                onTap: () => context.router.replace(SigninRoute()),
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
