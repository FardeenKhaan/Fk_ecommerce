import 'package:fk_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:fk_ecommerce/common/widgets/icons/fk_circular_icon.dart';
import 'package:fk_ecommerce/common/widgets/images/fk_rounded_image.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkProductImageSlider extends StatelessWidget {
  const FkProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = FkHelperFunction.isDarkMode(context);
    return FkCurvedEdgeWidget(
      child: Container(
        color: darkMode ? FKColors.darkerGrey : FKColors.white,
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(FKSizes.productImageRadius * 2),
                child: Image(image: AssetImage(FKImageStrings.productImages)),
              ),
            ),

            /// Product Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: FKSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => const SizedBox(width: FKSizes.spaceBtwItems),
                  itemBuilder: (context, index) {
                    return FkRoudedImage(
                      width: 80,
                      backgroundColor: darkMode ? FKColors.dark : FKColors.white,
                      border: Border.all(color: FKColors.primary),
                      padding: EdgeInsets.all(FKSizes.sm),
                      imageUrl: FKImageStrings.productImages,
                    );
                  },
                ),
              ),
            ),

            /// AppBar Icons
            FkAppBar(
              ShowBackArrow: true,
              actions: [FkCircularIcon(icon: Icons.favorite_outline_outlined, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
