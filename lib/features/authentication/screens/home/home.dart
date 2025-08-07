import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:fk_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:fk_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:fk_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:fk_ecommerce/features/authentication/screens/home/widgets/home_appbar.dart';
import 'package:fk_ecommerce/features/authentication/screens/home/widgets/home_categories.dart';
import 'package:fk_ecommerce/features/authentication/screens/home/widgets/promo_slider.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FkPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  FkHomeAppBar(),
                  SizedBox(height: FKSizes.spaceBtwSections),
                  // --search
                  FkSearchContainer(text: 'Search in Store'),
                  SizedBox(height: FKSizes.spaceBtwSections),
                  // --Categories--Products list
                  Padding(
                    padding: EdgeInsets.only(left: FKSizes.defaultSpace),
                    child: Column(
                      children: [
                        FkSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textcolor: Colors.white,
                        ),
                        SizedBox(height: FKSizes.spaceBtwItems),

                        // --categories
                        FkHomeCategores(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: EdgeInsets.all(FKSizes.defaultSpace),
              child: Column(
                children: [
                  FkPromoSlider(
                    banners: [
                      FKImageStrings.promoBanner1,
                      FKImageStrings.promoBanner2,
                      FKImageStrings.promoBanner1,
                    ],
                  ),
                  SizedBox(height: FKSizes.spaceBtwItems),

                  // --Popular Products
                  FkGridLayout(
                    itemcount: 4,
                    itembuilder: (BuildContext, int) => FkProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
