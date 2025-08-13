import 'package:fk_ecommerce/common/styles/shadows.dart';
import 'package:fk_ecommerce/common/widgets/common_text_widget/product_price_text.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:fk_ecommerce/common/widgets/icons/fk_circular_icon.dart';
import 'package:fk_ecommerce/common/widgets/images/fk_rounded_image.dart';
import 'package:fk_ecommerce/common/widgets/texts/fk_brand_title_text_with_verified_icon.dart';
import 'package:fk_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkProductCardVertical extends StatelessWidget {
  const FkProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [FkShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(FKSizes.productImageRadius),
          color: dark ? FKColors.darkGrey : FKColors.white,
        ),
        child: Column(
          children: [
            FkRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(FKSizes.sm),
              backgroundColor: dark ? FKColors.dark : FKColors.light,
              child: Stack(
                children: [
                  // thumbnail image
                  FkRoudedImage(
                    imageUrl: FKImageStrings.productImages4,
                    applyImageRadius: true,
                  ),
                  // sale tag
                  Positioned(
                    top: 12,
                    child: FkRoundedContainer(
                      radius: FKSizes.sm,
                      backgroundColor: FKColors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                        horizontal: FKSizes.sm,
                        vertical: FKSizes.xs,
                      ),
                      child: FkProductPriceText(price: '35.5'),
                    ),
                  ),

                  // Favourite icon Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: FkCircularIcon(
                      icon: Icons.favorite_outline,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: FKSizes.spaceBtwItems / 2),
            // details
            Padding(
              padding: EdgeInsets.only(left: FKSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FkProductTitleText(
                    title: 'Snippet Blue Jeans',
                    smallSize: true,
                  ),
                  SizedBox(height: FKSizes.spaceBtwItems / 2),
                  FkBrandTitleWithVerifiedIcon(title: 'Snippet'),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: FKSizes.sm),
                  child: Text(
                    '\$35.5',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: FKColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(FKSizes.cardRadiusMd),
                      bottomRight: Radius.circular(FKSizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                    width: FKSizes.iconLg * 1.2,
                    height: FKSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(Icons.add, color: FKColors.light),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
