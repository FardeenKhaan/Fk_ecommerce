import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/constants/text_Strings.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkLoginHeader extends StatelessWidget {
  const FkLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return Column(
      children: [
        Image(
          height: 120,
          image: AssetImage(
            dark ? FKImageStrings.darkAppLogo : FKImageStrings.lightAppLogo,
          ),
        ),
        Text(
          FKTextStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: FKSizes.sm),
        Text(
          FKTextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
