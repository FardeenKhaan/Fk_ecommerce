import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class circularContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;
  final double? padding;
  final Widget? child;
  final Color backgroundColor;
  const circularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.padding = 0,
    this.backgroundColor = FKColors.white,
    this.radius = 400,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
