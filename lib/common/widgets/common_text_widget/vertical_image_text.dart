import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkVerticalImageText extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final String title, image;
  final VoidCallback? onTap;
  const FkVerticalImageText({
    super.key,
    this.backgroundColor = FKColors.white,
    required this.title,
    required this.image,
    this.onTap,
    this.textColor = FKColors.white,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: FKSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(FKSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? (dark ? FKColors.black : FKColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? FKColors.light : FKColors.dark,
                ),
              ),
            ),

            //Text
            SizedBox(height: FKSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
