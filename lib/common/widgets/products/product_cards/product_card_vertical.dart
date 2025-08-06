import 'package:fk_ecommerce/common/styles/shadows.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkProductCardVertical extends StatelessWidget {
  const FkProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [FkShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(FKSizes.productImageRadius),
        color: dark ? FKColors.darkGrey : FKColors.white,
      ),
      child: Column(
        children: [
          FkRoundedContainer(height: 180, padding: EdgeInsets.all(FKSizes.sm),
          backgroundColor: dark? FKColors.dark : FKColors.light,
          child: Stack(
            
          ),
          )
        ],
      ),
    );
  }
}
