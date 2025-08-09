import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/device/device_utility.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkSearchContainer extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? Ontap;
  final EdgeInsetsGeometry padding;
  const FkSearchContainer({
    super.key,
    required this.text,
    this.icon = Icons.search,
    this.showBackground = true,
    this.showBorder = true,
    this.Ontap,
    this.padding = const EdgeInsets.symmetric(horizontal: FKSizes.defaultSpace),
  });

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: Ontap,
      child: Padding(
        padding: padding,
        child: Container(
          width: FKDeviceUtility.getScreenWidth(context),
          padding: EdgeInsets.all(FKSizes.md),
          decoration: BoxDecoration(
            color:
                showBackground
                    ? dark
                        ? FKColors.dark
                        : FKColors.light
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(FKSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: FKColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: FKColors.darkGrey),
              SizedBox(width: FKSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
