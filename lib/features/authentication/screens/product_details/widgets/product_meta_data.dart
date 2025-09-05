import 'package:fk_ecommerce/common/widgets/common_text_widget/product_price_text.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:fk_ecommerce/common/widgets/images/fk_circular_image.dart';
import 'package:fk_ecommerce/common/widgets/texts/fk_brand_title_text_with_verified_icon.dart';
import 'package:fk_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/enums.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
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
            SizedBox(width: FKSizes.spaceBtwItems),
            FkProductPriceText(price: '175', isLarge: true),
          ],
        ),
        SizedBox(height: FKSizes.spaceBtwItems / 1.5),

        /// -- Title
        FkProductTitleText(title: 'Green Nike Spot'),
        SizedBox(height: FKSizes.spaceBtwItems / 1.5),

        /// -- Stock Status
        Row(
          children: [
            FkProductTitleText(title: 'Status'),
            SizedBox(height: FKSizes.spaceBtwItems / 1.5),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        SizedBox(height: FKSizes.spaceBtwItems / 1.5),

        /// -- Brand
        Row(
          children: [
            FkCircularImage(
              image: FKImageStrings.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? FKColors.white : FKColors.black,
            ),
            FkBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSizes: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
