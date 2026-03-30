import 'package:docdoc_app/core/theme/app_colors.dart';
import 'package:docdoc_app/helpers/constants/app_svgs.dart';
import 'package:docdoc_app/helpers/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarLogoWidget extends StatelessWidget {
  const AppBarLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: .ltr,
      child: Row(
        spacing: 8,
        mainAxisAlignment: .center,
        children: [
          SvgPicture.asset(AppSvgs.docDocLogo),
          Text(
            "Docdoc",
            style: context.textTheme.headlineLarge?.copyWith(
              color: AppColors.grey100,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
