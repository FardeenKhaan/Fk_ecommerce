import 'package:fk_ecommerce/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/device/device_utility.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class OnBoarding_NextScreen extends StatelessWidget {
  const OnBoarding_NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return Positioned(
      right: FKSizes.defaultSpace,
      bottom: FKDeviceUtility.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(FKSizes.defaultSpace),
          backgroundColor: dark ? FKColors.light : FKColors.dark,
        ),
        child: Icon(
          Icons.arrow_forward_ios,
          color: dark ? FKColors.light : FKColors.dark,
        ),
      ),
    );
  }
}
