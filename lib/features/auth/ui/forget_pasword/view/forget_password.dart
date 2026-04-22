import 'package:auto_route/annotations.dart';
import 'package:docdoc_app/core/theme/app_colors.dart';
import 'package:docdoc_app/core/widget/default_auth_header.dart';
import 'package:docdoc_app/core/widget/default_primary_btn.dart';
import 'package:docdoc_app/core/widget/default_text_form_field.dart';
import 'package:docdoc_app/core/helpers/extensions/extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final formKey = GlobalKey<FormState>();
  final emailOrPhoneController = TextEditingController();
  @override
  void dispose() {
    emailOrPhoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Stack(
            children: [
              // reset_password
              Positioned(
                bottom: 26,
                right: 26,
                left: 26,
                child: DefaultPrimaryBtn(
                  title: "reset_password".tr(),
                  borderRadius: BorderRadius.circular(16),
                  textStyle: context.textTheme.titleMedium?.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  onTap: () {},
                ),
              ),
              ListView(
                padding: EdgeInsets.symmetric(horizontal: context.h * 0.030),
                physics: BouncingScrollPhysics(),
                children: [
                  SizedBox(height: context.h * 0.050),
                  DefaultAuthHeader(
                    title: "forgot_password_page".tr(),
                    subTitle: "security_message".tr(),
                  ),
                  SizedBox(height: context.h * 0.035),
                  // email or phone
                  DefaultTextFormField(
                    hintText: "email_or_phone".tr(),
                    controller: emailOrPhoneController,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
