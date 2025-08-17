import 'package:fk_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:fk_ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:fk_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:fk_ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:fk_ecommerce/common/widgets/products/product_cards/brand_card.dart';
import 'package:fk_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkStoreScreen extends StatelessWidget {
  const FkStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                      FkSectionHeading(title: 'Features Brands', onPressed: () {}),
                      SizedBox(height: FKSizes.spaceBtwItems / 1.5),
                      FkGridLayout(
                        itemcount: 4,
                        mainAxisExtent: 80,
                        itembuilder: (_, index) {
                          return FKBrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                /// --Tabs
                bottom: FKTabbar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furnitures')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },

          /// -- body --
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(FKSizes.defaultSpace),
                child: Column(
                  children: [
                    FkRoundedContainer(
                      showBorder: true,
                      borderColor: FKColors.darkGrey,
                      backgroundColor: Colors.transparent,
                      margin: EdgeInsets.only(bottom: FKSizes.spaceBtwItems),
                      child: Column(children: [FKBrandCard(showBorder: false)]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
