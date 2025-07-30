import 'package:fk_ecommerce/routes/app_routes.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/constants/text_Strings.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Reset Password'),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.clear),
            onPressed: () {
              Get.toNamed(Routes.LOGIN); // Navigate back to login screen
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(FKSizes.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(FKImageStrings.verifyIllustration),
                  width: FkHelperFunction.screenWidth() * 0.6,
                ),
                SizedBox(height: FKSizes.spaceBtwItems),
                // title & subtitle
                Text(
                  FKTextStrings.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: FKSizes.spaceBtwItems),

                Text(
                  FKTextStrings.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: FKSizes.spaceBtwItems),
                //Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Get.toNamed(Routes.LOGIN);
                    },
                    child: Text('Done'),
                  ),
                ),
                SizedBox(height: FKSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      // Get.toNamed(Routes.LOGIN);
                    },
                    child: Text(FKTextStrings.resendEmail),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
