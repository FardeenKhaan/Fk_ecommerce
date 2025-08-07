import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FkCircularIcon extends StatelessWidget {
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onpressed;
  const FkCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = FKSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color:
            backgroundColor != null
                ? backgroundColor!
                : dark
                ? FKColors.black.withOpacity(0.9)
                : FKColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onpressed,
        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
