import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FkShadowStyle {

  static final verticalProductShadow = BoxShadow(
    color: FKColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  ); // BoxShadow

  static final horizontalProductShadow = BoxShadow(
    color: FKColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  ); // BoxShadow
}