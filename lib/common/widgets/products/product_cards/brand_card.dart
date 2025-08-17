import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:fk_ecommerce/common/widgets/images/fk_circular_image.dart';
import 'package:fk_ecommerce/common/widgets/texts/fk_brand_title_text_with_verified_icon.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/enums.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FKBrandCard extends StatelessWidget {
  final bool showBorder;
  final void Function()? onTap;
  const FKBrandCard({super.key, required this.showBorder, this.onTap});

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: FkRoundedContainer(
        padding: EdgeInsets.all(FKSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,

        child: Row(
          children: [
            Flexible(
              child: FkCircularImage(
                image: FKImageStrings.clothIcon,
                overlayColor: dark ? FKColors.white : FKColors.black,
              ),
            ),
            SizedBox(width: FKSizes.spaceBtwItems / 2),

            /// -- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FkBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSizes: TextSizes.large),
                  Text('256 products', overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
