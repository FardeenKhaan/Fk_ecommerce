import 'package:fk_ecommerce/common/widgets/success_screen.dart';
import 'package:fk_ecommerce/features/authentication/screens/OnBoarding/onboarding_screen.dart';
import 'package:fk_ecommerce/features/authentication/screens/login/login_screen.dart';
import 'package:fk_ecommerce/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:fk_ecommerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:fk_ecommerce/features/authentication/screens/signup/signup_screen.dart';
import 'package:fk_ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:fk_ecommerce/routes/app_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

final List<GetPage> appPages = [
  GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
  GetPage(name: Routes.OnBoarding, page: () => OnboardingScreen()),
  GetPage(name: Routes.SIGNUP, page: () => SignupScreen()),
  GetPage(name: Routes.VerifyEmail, page: () => VerifyEmail()),
  GetPage(name: Routes.SuccessScreen, page: () => SuccessScreen()),
  GetPage(name: Routes.ForgotPassword, page: () => ForgotPassword()),
  GetPage(name: Routes.ResetPassword, page: () => ResetPassword()),
];
