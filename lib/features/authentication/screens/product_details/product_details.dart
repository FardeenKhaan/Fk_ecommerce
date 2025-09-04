import 'package:fk_ecommerce/features/authentication/screens/product_details/widgets/product_image_slider.dart';
import 'package:fk_ecommerce/features/authentication/screens/product_details/widgets/product_meta_data.dart';
import 'package:fk_ecommerce/features/authentication/screens/product_details/widgets/ratingAndshare.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = FkHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --Product Image Slider
            FkProductImageSlider(),

            ///  --Product details
            Padding(
              padding: EdgeInsets.only(
                right: FKSizes.defaultSpace,
                left: FKSizes.defaultSpace,
                bottom: FKSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// --Rating and Share
                  FkRatingAndShare(),

                  /// -- Price, title, stock, brands
                  FkProductMetaData(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
