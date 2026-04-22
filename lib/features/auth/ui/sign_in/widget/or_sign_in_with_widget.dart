import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/helpers/constants/app_svgs.dart';
import '../../../../../core/helpers/extensions/extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrSignInWithWidget extends StatelessWidget {
  const OrSignInWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: .center,
          children: [
            Container(height: 1, color: AppColors.grey40),
            Container(
              color: AppColors.white,
              padding: EdgeInsets.symmetric(horizontal: context.h * .015),
              child: Text(
                "or_sign_in_with".tr(),
                style: context.textTheme.labelMedium?.copyWith(
                  color: AppColors.grey60,
                  fontWeight: .normal,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: context.h * .050),
        // TODO : Lern This Cheet
        Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            SvgPicture.asset(AppSvgs.google),
            SvgPicture.asset(AppSvgs.faceBook),
            SvgPicture.asset(AppSvgs.apple),
          ],
        ),
      ],
    );
  }
}
