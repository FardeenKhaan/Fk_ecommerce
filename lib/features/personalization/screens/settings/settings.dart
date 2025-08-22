import 'package:fk_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:fk_ecommerce/common/widgets/images/fk_circular_image.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ---
            FkPrimaryHeaderContainer(
              child: Column(
                children: [
                  FkAppBar(
                    title: Text(
                      'Settings',
                      style: Theme.of(context).textTheme.headlineMedium!.apply(color: FKColors.white),
                    ),
                  ),

                  /// User profile Card
                  ListTile(
                    leading: FkCircularImage(image: FKImageStrings.user, width: 50, height: 50, padding: 0),
                    title: Text(
                      'Fardeen Khan',
                      style: Theme.of(context).textTheme.headlineSmall!.apply(color: FKColors.white),
                    ),
                    subtitle: Text(
                      'fardeenkhan@gmail.com',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(color: FKColors.white),
                    ),
                    trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: FKColors.white)),
                  ),
                  SizedBox(height: FKSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
