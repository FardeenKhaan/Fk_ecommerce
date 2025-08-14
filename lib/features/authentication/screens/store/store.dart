import 'package:fk_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:fk_ecommerce/common/widgets/images/fk_circular_image.dart';
import 'package:fk_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:fk_ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:fk_ecommerce/common/widgets/texts/fk_brand_title_text_with_verified_icon.dart';
import 'package:fk_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/enums.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkStoreScreen extends StatelessWidget {
  const FkStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: FkAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [FkCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? FKColors.black : FKColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: EdgeInsets.all(FKSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(height: FKSizes.spaceBtwItems),
                    FkSearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(height: FKSizes.spaceBtwItems),

                    // --Featured brands
                    FkSectionHeading(
                      title: 'Features Brands',

                      onPressed: () {},
                    ),
                    SizedBox(height: FKSizes.spaceBtwItems / 1.5),
                    FkGridLayout(
                      itemcount: 4,
                      mainAxisExtent: 80,
                      itembuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: FkRoundedContainer(
                            padding: EdgeInsets.all(FKSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,

                            child: Row(
                              children: [
                                Flexible(
                                  child: FkCircularImage(
                                    image: FKImageStrings.clothIcon,
                                    overlayColor:
                                        dark ? FKColors.white : FKColors.black,
                                  ),
                                ),
                                SizedBox(width: FKSizes.spaceBtwItems / 2),

                                /// -- Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      FkBrandTitleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSizes: TextSizes.large,
                                      ),
                                      Text(
                                        '256 products',
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
