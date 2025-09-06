import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:fk_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:fk_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkProductAttributes extends StatelessWidget {
  const FkProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = FkHelperFunction.isDarkMode(context);
    return Column(
      children: [
        /// -- Attribute Pricing and Description
        FkRoundedContainer(
          backgroundColor: darkMode ? FKColors.darkGrey : FKColors.grey,
          child: Column(
            children: [
              /// title, Price and Stock
              Row(
                children: [
                  FkSectionHeading(title: 'Variation', showActionButton: false),
                  SizedBox(width: FKSizes.spaceBtwItems),
                  FkProductTitleText(title: 'Price:', smallSize: true),
                  Row(
                    children: [
                      /// Actual Price
                      Text(
                        '\$150',
                        style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(width: FKSizes.spaceBtwItems),

                      /// Sale Price
                      Text('\$100', style: Theme.of(context).textTheme.titleSmall),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
