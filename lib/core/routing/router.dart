import 'package:auto_route/auto_route.dart';
<<<<<<< HEAD

=======
>>>>>>> features/login
import '../../features/auth/ui/forget_pasword/view/forget_password.dart';
import '../../features/auth/ui/sign_in/view/signin_page.dart';
import '../../features/auth/ui/sign_up/view/signup_page.dart';
import '../../features/on_boarding/view/on_boarding_page.dart';
<<<<<<< HEAD
=======
import '../../features/splash/view/splash_page.dart';

>>>>>>> features/login
import 'routes.dart';

part 'router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: OnBoardingRoute.page,
      path: Routes.onBoarding,
      initial: true,
    ),
    AutoRoute(page: SigninRoute.page, path: Routes.signIn),
    AutoRoute(page: SignUpRoute.page, path: Routes.signUp),
    AutoRoute(page: ForgetPasswordRoute.page, path: Routes.forgetPassword),
  ];
}
