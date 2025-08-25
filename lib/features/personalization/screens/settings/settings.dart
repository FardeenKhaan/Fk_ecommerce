import 'package:fk_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:fk_ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:fk_ecommerce/common/widgets/listtiles/setting_menu_tile.dart';
import 'package:fk_ecommerce/common/widgets/listtiles/user_profile_tile.dart';
import 'package:fk_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:fk_ecommerce/features/personalization/screens/profile/profile_screen.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

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
                  FkUserProfileTile(onPressed: () => Get.to(() => ProfileScreen())),
                  SizedBox(height: FKSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(FKSizes.spaceBtwSections),
              child: Column(
                children: [
                  FkSectionHeading(title: 'Account Settings'),
                  SizedBox(height: FKSizes.spaceBtwItems),
                  FkSettingMenuTile(
                    icon: Icons.person,
                    title: 'Profile',
                    subtitle: 'Manage your profile information',
                    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: FKColors.grey),
                  ),
                  FkSettingMenuTile(
                    icon: Icons.notifications,
                    title: 'Notifications',
                    subtitle: 'Manage your notification preferences',
                    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: FKColors.grey),
                  ),
                  FkSettingMenuTile(
                    icon: Icons.lock,
                    title: 'Privacy',
                    subtitle: 'Manage your privacy settings',
                    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: FKColors.grey),
                  ),

                  SizedBox(height: FKSizes.spaceBtwSections),
                  FkSectionHeading(title: 'App Settings', showActionButton: false),
                  SizedBox(height: FKSizes.spaceBtwItems),
                  FkSettingMenuTile(
                    icon: Icons.language,
                    title: 'Language',
                    subtitle: 'Manage your app language',
                    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: FKColors.grey),
                  ),
                  FkSettingMenuTile(
                    icon: Icons.dark_mode,
                    title: 'Theme',
                    subtitle: 'Manage your app theme',
                    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: FKColors.grey),
                  ),
                  FkSettingMenuTile(
                    icon: Icons.info,
                    title: 'About',
                    subtitle: 'Learn more about the app',
                    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: FKColors.grey),
                  ),
                  FkSettingMenuTile(
                    icon: Icons.location_on,
                    title: 'Location',
                    subtitle: 'Manage your location settings',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SizedBox(height: FKSizes.spaceBtwItems),
                  SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () {}, child: Text('LogOut'))),
                  SizedBox(height: FKSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
