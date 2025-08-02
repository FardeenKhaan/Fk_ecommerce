import 'package:fk_ecommerce/common/styles/products_cart/cart_menu_icon.dart';
import 'package:fk_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/text_Strings.dart';
import 'package:flutter/material.dart';

class FkHomeAppBar extends StatelessWidget {
  const FkHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FkAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            FKTextStrings.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: FKColors.grey),
          ),
          Text(
            FKTextStrings.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: FKColors.white),
          ),
        ],
      ),
      actions: [FkCartCounterIcon(onPressed: () {}, IconColor: FKColors.white)],
    );
  }
}
