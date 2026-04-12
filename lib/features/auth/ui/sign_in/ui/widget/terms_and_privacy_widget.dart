import 'package:docdoc_app/core/theme/app_colors.dart';
import 'package:docdoc_app/helpers/extensions/extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndPrivacyWidget extends StatelessWidget {
  final Function()? onTapprivacyPolicy;
  final Function()? onTapTermsAndConditions;
  const TermsAndPrivacyWidget({
    super.key,
    this.onTapprivacyPolicy,
    this.onTapTermsAndConditions,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: .center,
      maxLines: 2,
      text: TextSpan(
        style: context.textTheme.labelMedium?.copyWith(
          color: AppColors.grey60,
          fontWeight: .normal,
        ),
        children: [
          TextSpan(text: "by_logging_you_agree_to_our".tr()),
          textSpanFunc(
            context,
            text: "terms_and_conditions".tr(),
            onTap: onTapTermsAndConditions,
          ),
          TextSpan(text: "and".tr()),
          textSpanFunc(
            context,
            text: 'privacy_policy'.tr(),
            onTap: onTapprivacyPolicy,
          ),
        ],
      ),
    );
  }

  TextSpan textSpanFunc(
    BuildContext context, {
    required String text,
    required Function()? onTap,
  }) {
    return TextSpan(
      text: text,
      recognizer: TapGestureRecognizer()..onTap = onTap,
      style: context.textTheme.labelMedium?.copyWith(
        color: AppColors.grey100,
        fontWeight: .normal,
      ),
    );
  }
}
