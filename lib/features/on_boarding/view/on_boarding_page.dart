import 'package:auto_route/annotations.dart';
import 'package:docdoc_app/features/on_boarding/widget/appbar_logo_widget.dart';
import 'package:docdoc_app/features/on_boarding/widget/image_and_title_widget.dart';
import 'package:docdoc_app/helpers/extensions/extensions.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: context.h * 0.021),
              AppBarLogoWidget(),
              SizedBox(height: context.h * 0.041),
              ImageAndTitleWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
