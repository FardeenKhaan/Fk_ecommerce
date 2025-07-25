import 'package:fk_ecommerce/features/authentication/screens/OnBoarding/onboarding_screen.dart';
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
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,

      theme: FkAppTheme.lighttheme,
      darkTheme: FkAppTheme.darktheme,
      home: OnboardingScreen(),
    );
  }
}
