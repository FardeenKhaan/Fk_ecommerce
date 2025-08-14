import 'package:fk_ecommerce/common/widgets/texts/fk_brand_title_text.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/enums.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FkBrandTitleWithVerifiedIcon extends StatelessWidget {
  final String title;
  final int maxlines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  const FkBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textColor,
    this.iconColor = FKColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: FkBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxlines,
            textAlign: textAlign,
            brandTextSize: brandTextSizes,
          ),
        ),
        SizedBox(width: FKSizes.xs),
        Icon(Icons.verified, color: FKColors.primary, size: FKSizes.iconXs),
      ],
    );
  }
}
