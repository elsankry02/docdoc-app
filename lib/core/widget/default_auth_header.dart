import '../theme/app_colors.dart';
import '../helpers/extensions/extensions.dart';
import 'package:flutter/material.dart';

class DefaultAuthHeader extends StatelessWidget {
  final String title;
  final String subTitle;
  const DefaultAuthHeader({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 8,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: .ellipsis,
          style: context.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.primary100,
          ),
        ),
        Text(
          subTitle,
          maxLines: 3,
          overflow: .ellipsis,
          style: context.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.body,
          ),
        ),
      ],
    );
  }
}
