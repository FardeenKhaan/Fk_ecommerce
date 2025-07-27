import 'package:fk_ecommerce/features/authentication/screens/OnBoarding/onboarding_screen.dart';
import 'package:fk_ecommerce/features/authentication/screens/login/login_screen.dart';
import 'package:fk_ecommerce/features/authentication/screens/signup/signup_screen.dart';
import 'package:fk_ecommerce/routes/app_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

final List<GetPage> appPages = [
  GetPage(
    name: Routes.LOGIN,
    page: () => LoginScreen(),
    // binding: LoginBinding()
  ),
  GetPage(name: Routes.OnBoarding, page: () => OnboardingScreen()),
  GetPage(name: Routes.SIGNUP, page: () => SignupScreen()),
  // GetPage(name: Routes.ForgotPassword, page: () => ForgotPasswordScreen()),
];
