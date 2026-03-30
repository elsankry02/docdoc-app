import 'package:auto_route/auto_route.dart';
import 'package:docdoc_app/features/auth/ui/sign_in/ui/view/signin_page.dart';
import 'package:docdoc_app/features/auth/ui/sign_up/ui/view/signup_page.dart';
import 'package:docdoc_app/features/on_boarding/ui/view/on_boarding_page.dart';

part 'router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnBoardingRoute.page),
    AutoRoute(page: SigninRoute.page),
    AutoRoute(page: SignUpRoute.page),
  ];
}
