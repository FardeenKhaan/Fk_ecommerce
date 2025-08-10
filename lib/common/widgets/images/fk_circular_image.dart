import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkCircularImage extends StatelessWidget {
  final double? width, height, padding;
  final String image;
  final bool isNetworkImage;
  final Color? backgroundColor;
  final Color? overlayColor;
  final BoxFit? fit;

  const FkCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = FKSizes.sm,
    required this.image,
    this.isNetworkImage = false,
    this.backgroundColor,
    this.overlayColor,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ? FKColors.black : FKColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image:
            isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}
