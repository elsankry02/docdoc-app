import 'package:auto_route/auto_route.dart';
import '../../../../../core/routing/router.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../helpers/extensions/extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .end,
      children: [
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
