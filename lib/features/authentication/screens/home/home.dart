import 'package:fk_ecommerce/common/widgets/common_text_widget/vertical_image_text.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:fk_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:fk_ecommerce/features/authentication/screens/home/widgets/home_appbar.dart';
import 'package:fk_ecommerce/features/authentication/screens/home/widgets/home_categories.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/device/device_utility.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FkPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  FkHomeAppBar(),
                  SizedBox(height: FKSizes.spaceBtwSections),
                  // --search
                  FkSearchContainer(text: 'Search in Store'),
                  SizedBox(height: FKSizes.spaceBtwSections),
                  // --Categories--Products list
                  Padding(
                    padding: EdgeInsets.only(left: FKSizes.defaultSpace),
                    child: Column(
                      children: [
                        FkSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textcolor: Colors.white,
                        ),
                        SizedBox(height: FKSizes.spaceBtwItems),

                        // --categories
                        FkHomeCategores(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
