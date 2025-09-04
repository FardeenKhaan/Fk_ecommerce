import 'package:fk_ecommerce/common/widgets/common_text_widget/product_price_text.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkProductMetaData extends StatelessWidget {
  const FkProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = FkHelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            /// -- Sale tag
            FkRoundedContainer(
              radius: FKSizes.sm,
              backgroundColor: FKColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(horizontal: FKSizes.sm, vertical: FKSizes.xs),
              child: FkProductPriceText(price: '35.5'),
            ),
            SizedBox(width: FKSizes.spaceBtwItems),

            /// -- Price
            Text(
              '\$99.99',
              style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
            ),
          ],
        ),

        // SizedBox(height: 4.0),

        // /// -- Stock
        // Text(
        //   'In Stock',
        //   style: Theme.of(context).textTheme.bodyText2,
        // ),
        // SizedBox(height: 4.0),

        // /// -- Brands
        // Text(
        //   'Brand Name',
        //   style: Theme.of(context).textTheme.bodyText2,
        // ),
      ],
    );
  }
}
