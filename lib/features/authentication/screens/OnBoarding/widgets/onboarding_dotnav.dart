import 'package:fk_ecommerce/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/device/device_utility.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigator extends StatelessWidget {
  const OnBoardingDotNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = FkHelperFunction.isDarkMode(context);
    return Positioned(
      bottom: FKDeviceUtility.getBottomNavigationBarHeight() + 25,
      left: FKSizes.defaultSpace,

      child: SmoothPageIndicator(
        controller: controller.pagecontroller,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? FKColors.light : FKColors.dark,
          dotColor: Colors.grey,
          dotHeight: 6,
          dotWidth: 10,
          spacing: 8.0,
        ),
      ),
    );
  }
}
