import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:fk_ecommerce/common/widgets/images/fk_rounded_image.dart';
import 'package:fk_ecommerce/features/shop/controllers/home_controller.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get/utils.dart';

class FkPromoSlider extends StatelessWidget {
  final List<String> banners;
  FkPromoSlider({super.key, required this.banners});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => FkRoudedImage(imageUrl: url)).toList(),

          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged:
                (index, reason) => controller.carouselCurrentIndex(index),
          ),
        ),
        SizedBox(height: FKSizes.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                FkCircularContainer(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor:
                      controller.carouselCurrentIndex.value == i
                          ? FKColors.primary
                          : FKColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
