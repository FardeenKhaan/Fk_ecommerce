import 'package:fk_ecommerce/common/widgets/brands/brand_showcase.dart';
import 'package:fk_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:fk_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:fk_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FKCategoryTab extends StatelessWidget {
  const FKCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return ListView(
      shrinkWrap: true,
      physics: AlwaysScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(FKSizes.defaultSpace),
          child: Column(
            /// --Brands
            children: [
              FkBrandShowCase(
                dark: dark,
                images: [FKImageStrings.productImages, FKImageStrings.productImages6, FKImageStrings.productImages7],
              ),
              FkBrandShowCase(
                dark: dark,
                images: [FKImageStrings.productImages, FKImageStrings.productImages6, FKImageStrings.productImages7],
              ),
              SizedBox(height: FKSizes.spaceBtwItems),

              /// -- Products
              FkSectionHeading(title: 'You might like', onPressed: () {}),
              SizedBox(height: FKSizes.spaceBtwItems),

              FkGridLayout(itemcount: 4, itembuilder: (context, index) => FkProductCardVertical()),
            ],
          ),
        ),
      ],
    );
  }
}
