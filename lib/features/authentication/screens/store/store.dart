import 'package:fk_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:fk_ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:fk_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkStoreScreen extends StatelessWidget {
  const FkStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              backgroundColor:
                  FkHelperFunction.isDarkMode(context)
                      ? FKColors.black
                      : FKColors.white,
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

                    FkRoundedContainer(
                      padding: EdgeInsets.all(FKSizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(children: [FkCircularImage()]),
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

class FkCircularImage extends StatelessWidget {
  const FkCircularImage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return Container(
      width: 56,
      height: 56,
      padding: EdgeInsets.all(FKSizes.sm),
      decoration: BoxDecoration(
        color: dark ? FKColors.black : FKColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: AssetImage(FKImageStrings.clothIcon),
        color: dark ? FKColors.white : FKColors.dark,
      ),
    );
  }
}
