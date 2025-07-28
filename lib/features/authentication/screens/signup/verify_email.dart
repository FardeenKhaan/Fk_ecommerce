import 'package:fk_ecommerce/common/widgets/success_screen.dart';
import 'package:fk_ecommerce/routes/app_routes.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/constants/text_Strings.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Verify Email'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.clear),
            onPressed: () {
              Get.offNamed(Routes.LOGIN);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(FKSizes.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(FKImageStrings.verifyIllustration),
                  width: FkHelperFunction.screenWidth() * 0.06,
                ),
                SizedBox(height: FKSizes.spaceBtwItems),
                // title & subtitle
                Text(
                  FKTextStrings.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: FKSizes.spaceBtwItems),
                Text(
                  'fardeenkhaan@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: FKSizes.spaceBtwItems),
                Text(
                  FKTextStrings.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: FKSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offNamed(Routes.SuccessScreen);
                    },
                    child: Text(FKTextStrings.FkContinue),
                  ),
                ),
                SizedBox(height: FKSizes.spaceBtwItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      // Logic to resend verification email
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
