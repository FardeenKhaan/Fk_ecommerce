import 'package:fk_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:fk_ecommerce/common/widgets/images/fk_circular_image.dart';
import 'package:fk_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:fk_ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FkAppBar(ShowBackArrow: true, title: Text('Profile', style: Theme.of(context).textTheme.headlineSmall)),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FKSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    FkCircularImage(image: FKImageStrings.user, width: 80, height: 80),
                    TextButton(onPressed: () {}, child: Text('Change Profile Picture')),
                  ],
                ),
              ),

              /// Details
              SizedBox(height: FKSizes.spaceBtwItems / 2),
              Divider(),
              SizedBox(height: FKSizes.spaceBtwItems),
              FkSectionHeading(title: 'Profile Information', showActionButton: false),
              SizedBox(height: FKSizes.spaceBtwItems),

              FkProfileMenu(onTap: () {}, title: 'Name', value: 'Fardeen Khan'),
              FkProfileMenu(onTap: () {}, title: 'Username', value: 'Fardeen Khan'),

              SizedBox(height: FKSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: FKSizes.spaceBtwItems),

              /// Heading Personal Info
              const FkSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: FKSizes.spaceBtwItems),

              FkProfileMenu(title: 'User ID', value: '45689', icon: Icons.copy, onTap: () {}),
              FkProfileMenu(title: 'E-mail', value: 'fardeenkhaan70@gmail.com', onTap: () {}),
              FkProfileMenu(title: 'Phone Number', value: '+92-314-3174139', onTap: () {}),
              FkProfileMenu(title: 'Gender', value: 'Male', onTap: () {}),
              FkProfileMenu(title: 'Date of Birth', value: '23 Nov, 2003', onTap: () {}),
              const Divider(),
              const SizedBox(height: FKSizes.spaceBtwItems),
              Center(
                child: TextButton(onPressed: () {}, child: Text('Account Closed', style: TextStyle(color: Colors.red))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
