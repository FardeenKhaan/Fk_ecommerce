import 'package:fk_ecommerce/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:fk_ecommerce/features/authentication/screens/OnBoarding/widgets/onboarding_dotnav.dart';
import 'package:fk_ecommerce/features/authentication/screens/OnBoarding/widgets/onboarding_nextbutton.dart';
import 'package:fk_ecommerce/features/authentication/screens/OnBoarding/widgets/onboarding_page.dart';
import 'package:fk_ecommerce/features/authentication/screens/OnBoarding/widgets/onboarding_skip.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/constants/text_Strings.dart';
import 'package:fk_ecommerce/utils/device/device_utility.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          // horizontal Scrollable Pages
          PageView(
            controller: controller.pagecontroller,
            onPageChanged: controller.updatePageIndicator,
            children: [
              Onboarding_Page(
                image: FKImageStrings.onBoardingImage1,
                title: FKTextStrings.onBoardingTitle1,
                subTitle: FKTextStrings.onBoardingSubTitle1,
              ),
              Onboarding_Page(
                image: FKImageStrings.onBoardingImage2,
                title: FKTextStrings.onBoardingTitle2,
                subTitle: FKTextStrings.onBoardingSubTitle2,
              ),
              Onboarding_Page(
                image: FKImageStrings.onBoardingImage3,
                title: FKTextStrings.onBoardingTitle3,
                subTitle: FKTextStrings.onBoardingSubTitle3,
              ),
            ],
          ),
          // Skip Button
          OnBoardingSkip(),
          // Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigator(),
          // Circular Buttons
          OnBoarding_NextScreen(),
        ],
      ),
    );
  }
}
