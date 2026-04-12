import 'package:auto_route/auto_route.dart';
import 'package:docdoc_app/core/routing/router.dart';
import 'package:docdoc_app/core/theme/app_colors.dart';
import 'package:docdoc_app/helpers/extensions/extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RememberMeAndForgotPasswordWidget extends StatelessWidget {
  final bool? value;
  final void Function(bool? value)? onChanged;
  const RememberMeAndForgotPasswordWidget({
    super.key,
    this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Row(
          spacing: 9,
          children: [
            SizedBox(
              height: context.h * 0.018,
              width: context.h * 0.018,
              child: Checkbox(
                side: BorderSide(width: 2, color: AppColors.grey60),
                value: value,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                onChanged: onChanged,
                activeColor: AppColors.fillblue,
              ),
            ),
            Text(
              "remember_me".tr(),
              style: context.textTheme.labelMedium?.copyWith(
                color: AppColors.grey60,
              ),
            ),
          ],
        ),
        RichText(
          text: TextSpan(
            text: "forgot_password".tr(),
            style: context.textTheme.labelMedium?.copyWith(
              color: AppColors.primary100,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.router.push(ForgetPasswordRoute()),
          ),
        ),
      ],
    );
  }
}
