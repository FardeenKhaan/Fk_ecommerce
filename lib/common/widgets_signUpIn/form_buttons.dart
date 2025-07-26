import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FkFormButton extends StatelessWidget {
  const FkFormButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // decoration: BoxDecoration(
          //   border: Border.all(color: FKColors.grey),
          //   borderRadius: BorderRadius.circular(100),
          // ),
          child: IconButton(
            onPressed: () {
              // Handle Google sign-in logic here
            },
            icon: Image(
              height: FKSizes.iconMd,
              width: FKSizes.iconMd,
              image: AssetImage(FKImageStrings.google),
            ), // Google Icon
          ),
        ), // Container
        SizedBox(width: FKSizes.spaceBtwItems),
        Container(
          // decoration: BoxDecoration(
          //   border: Border.all(color: FKColors.grey),
          //   borderRadius: BorderRadius.circular(100),
          // ),
          child: IconButton(
            onPressed: () {
              // Handle Facebook sign-in logic here
            },
            icon: Image(
              height: FKSizes.iconMd,
              width: FKSizes.iconMd,
              image: AssetImage(FKImageStrings.facebook),
            ), // Facebook Icon
          ),
        ), // Container
      ],
    );
  }
}
