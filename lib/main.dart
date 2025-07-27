import 'package:fk_ecommerce/features/authentication/screens/OnBoarding/onboarding_screen.dart';
import 'package:fk_ecommerce/routes/app_pages.dart';
import 'package:fk_ecommerce/routes/app_routes.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  // FKColors.linearGradient;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FK_ecommerce',
      themeMode: ThemeMode.system,

      theme: FkAppTheme.lighttheme,
      darkTheme: FkAppTheme.darktheme,
      // home: OnboardingScreen(),
      initialRoute: Routes.OnBoarding, // Correct starting point
      getPages: appPages,
    );
  }
}
