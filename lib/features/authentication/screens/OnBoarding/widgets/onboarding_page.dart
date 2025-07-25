import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class Onboarding_Page extends StatelessWidget {
  final String image, title, subTitle;
  const Onboarding_Page({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(FKSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: FkHelperFunction.screenWidth() * 0.8,
            height: FkHelperFunction.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: FKSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          // Image(image: AssetImage(FKImageStrings.onBoardingImage2)),
          // Image(image: AssetImage(FKImageStrings.onBoardingImage3)),
        ],
      ),
    );
  }
}
