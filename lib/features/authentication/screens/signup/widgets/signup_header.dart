import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/constants/text_Strings.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkSignUpHeader extends StatelessWidget {
  const FkSignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = FkHelperFunction.isDarkMode(context);
    return Column(
      children: [
        Text(
          FKTextStrings.signupTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        // SizedBox(height: FKSizes.sm),
        // Text(
        //   FKTextStrings.signupSubTitle,
        //   style: Theme.of(context).textTheme.bodyMedium,
        // ),
      ],
    );
  }
}
