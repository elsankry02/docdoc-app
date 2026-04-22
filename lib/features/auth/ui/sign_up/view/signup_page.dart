import 'package:auto_route/auto_route.dart';
import 'package:docdoc_app/core/routing/router.dart';
import 'package:docdoc_app/core/theme/app_colors.dart';
import 'package:docdoc_app/core/widget/default_auth_header.dart';
import 'package:docdoc_app/core/widget/default_primary_btn.dart';
import 'package:docdoc_app/core/widget/default_text_form_field.dart';
import 'package:docdoc_app/features/auth/ui/sign_in/widget/auth_rich_text_widget.dart';
import 'package:docdoc_app/features/auth/ui/sign_in/widget/terms_and_privacy_widget.dart';
import 'package:docdoc_app/core/helpers/extensions/extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  bool obscureText = true;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
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
                title: "create_account".tr(),
                subTitle: "signup_description".tr(),
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
              SizedBox(height: context.h * 0.016),
              DefaultTextFormField(
                hintText: "phone_number".tr(),
                controller: phoneController,
              ),
              SizedBox(height: context.h * 0.040),
              //  create account
              DefaultPrimaryBtn(
                title: "create_account".tr(),
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
                title: "already_have_an_account".tr(),
                subTitle: "sign_in".tr(),
                onTap: () => context.router.replace(SigninRoute()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
