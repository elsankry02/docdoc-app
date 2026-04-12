import '../../../../../core/theme/app_colors.dart';
import '../../../../../helpers/extensions/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthRichTextWidget extends StatelessWidget {
  final String title, subTitle;
  final Function()? onTap;
  const AuthRichTextWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: context.textTheme.labelMedium?.copyWith(
            color: AppColors.grey100,
            fontWeight: .normal,
          ),
          children: [
            TextSpan(text: title),
            TextSpan(text: " "),
            TextSpan(
              text: subTitle,
              style: context.textTheme.labelMedium?.copyWith(
                color: AppColors.primary100,
                fontWeight: FontWeight.w700,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
