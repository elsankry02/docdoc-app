import 'package:auto_route/auto_route.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/features/auth/ui/sign_in/ui/view/signin_page.dart';
import 'package:docdoc_app/features/auth/ui/sign_up/ui/view/signup_page.dart';
import 'package:docdoc_app/features/on_boarding/view/on_boarding_page.dart';
import 'package:docdoc_app/features/splash/view/splash_page.dart';

part 'router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, path: Routes.splash),
    AutoRoute(page: OnBoardingRoute.page, path: Routes.onBoarding, initial: true),
    AutoRoute(page: SigninRoute.page, path: Routes.signIn),
    AutoRoute(page: SignUpRoute.page, path: Routes.signUp),
  ];
}
