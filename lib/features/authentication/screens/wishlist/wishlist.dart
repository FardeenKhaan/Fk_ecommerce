import 'package:fk_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:fk_ecommerce/common/widgets/icons/fk_circular_icon.dart';
import 'package:fk_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:fk_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:fk_ecommerce/features/authentication/screens/home/home.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FkAppBar(
        title: Text('WishList', style: Theme.of(context).textTheme.headlineSmall),
        actions: [FkCircularIcon(icon: Icons.add, onpressed: () => Get.to(HomeScreen()))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(FKSizes.defaultSpace),
          child: Column(
            children: [FkGridLayout(itemcount: 4, itembuilder: (context, index) => FkProductCardVertical())],
          ),
        ),
      ),
    );
  }
}
