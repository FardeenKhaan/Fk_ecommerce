import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:fk_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FkBrandShowCase extends StatelessWidget {
  final List<String> images;
  const FkBrandShowCase({super.key, required this.dark, required this.images});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return FkRoundedContainer(
      showBorder: true,
      borderColor: FKColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(FKSizes.md),
      margin: EdgeInsets.only(bottom: FKSizes.spaceBtwItems),
      child: Column(
        children: [
          /// -- Brand with productcard
          FKBrandCard(showBorder: false),
          SizedBox(height: FKSizes.spaceBtwItems),

          /// -- Product card
          Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList()),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, BuildContext context) {
    return Expanded(
      child: FkRoundedContainer(
        height: 100,
        backgroundColor: dark ? FKColors.darkGrey : FKColors.lightGrey,
        padding: EdgeInsets.only(right: FKSizes.sm),
        margin: EdgeInsets.all(FKSizes.md),
        child: Image(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
