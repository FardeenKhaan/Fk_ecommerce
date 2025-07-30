import 'package:fk_ecommerce/common/styles/spacing_styles.dart';
import 'package:fk_ecommerce/routes/app_routes.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/constants/text_Strings.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  // final String title, subtitle, image;
  // final VoidCallback onPressed;
  const SuccessScreen({
    super.key,
    // required this.title,
    // required this.subtitle,
    // required this.image, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: FkSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(FKImageStrings.verifyIllustration),
                width: FkHelperFunction.screenWidth() * 0.3,
              ),
              SizedBox(height: FKSizes.spaceBtwItems),
              // title & subtitle
              Text(
                FKTextStrings.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: FKSizes.spaceBtwItems),

              Text(
                FKTextStrings.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: FKSizes.spaceBtwSections),
              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Text(FKTextStrings.FkContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
