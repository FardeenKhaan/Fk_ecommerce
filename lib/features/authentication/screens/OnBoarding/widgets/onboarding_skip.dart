import 'package:fk_ecommerce/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: FKDeviceUtility.getAppBarHeight(),
      right: FKSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.SkipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
