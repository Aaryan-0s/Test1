import '../../features/auth/presentation/view/login_view.dart';
import '../../features/auth/presentation/view/signup_view.dart';
import '../../view/dashboard.dart';

class AppRoute {
  AppRoute._();

  // static const String splashRoute = '/splash';
  static const String signUpRoute = '/signup';
  static const String loginRoute = '/login';
  static const String dashBoardRoute = '/dashboard';

  static getApplicationRoute() {
    return {
      // splashRoute: (context) => const SplashView(),
      loginRoute: (context) => const Login(),
      dashBoardRoute: (context) => const Dashboard(),
      signUpRoute: (context) => const SignUp(),
    };
  }
}
