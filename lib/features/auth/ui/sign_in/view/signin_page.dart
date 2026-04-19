import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/routing/router.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/widget/default_auth_header.dart';
import '../../../../../core/widget/default_primary_btn.dart';
import '../../../../../core/widget/default_text_form_field.dart';
import '../../../../../helpers/extensions/extensions.dart';
import '../widget/auth_rich_text_widget.dart';
import '../widget/forgot_password_widget.dart';
import '../widget/terms_and_privacy_widget.dart';

@RoutePage()
class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscureText = true;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: context.h * 0.030),
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: context.h * 0.050),
              DefaultAuthHeader(
                title: "welcome_back".tr(),
                subTitle: "welcome_back_message".tr(),
              ),
              SizedBox(height: context.h * 0.036),
              //  Email
              DefaultTextFormField(
                hintText: "email".tr(),
                controller: emailController,
              ),
              SizedBox(height: context.h * 0.016),
              // Password
              DefaultTextFormField(
                hintText: "password".tr(),
                controller: passwordController,
                obscureText: obscureText,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    size: 24,
                    color: AppColors.primary100,
                  ),
                ),
              ),
              SizedBox(height: context.h * 0.020),
              // Forgot Password
              ForgotPasswordWidget(),
              SizedBox(height: context.h * 0.040),
              //  Log in
              DefaultPrimaryBtn(
                title: "login".tr(),
                borderRadius: BorderRadius.circular(16),
                textStyle: context.textTheme.titleMedium?.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                ),
                onTap: () {},
              ),
              SizedBox(height: context.h * .030),
              // Terms And Privacy
              TermsAndPrivacyWidget(
                onTapTermsAndConditions: () {},
                onTapprivacyPolicy: () {},
              ),
              SizedBox(height: context.h * .060),
              AuthRichTextWidget(
                title: "no_account".tr(),
                subTitle: "sign_up".tr(),
                onTap: () => context.router.replace(SignUpRoute()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
