import 'package:fk_ecommerce/common/styles/spacing_styles.dart';
import 'package:fk_ecommerce/common/widgets_signUpIn/form_divider.dart';
import 'package:fk_ecommerce/common/widgets_signUpIn/form_buttons.dart';
import 'package:fk_ecommerce/features/authentication/screens/login/widegts/login_form.dart';
import 'package:fk_ecommerce/features/authentication/screens/login/widegts/login_header.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/image_Strings.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/constants/text_Strings.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: FkSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //loop, title and subtitle
              FkLoginHeader(),

              // login form
              FkLoginForm(),

              // Divider
              FkFormDivider(
                dividerText: FKTextStrings.orSignInWith.capitalize!,
              ), // Row
              // SizedBox(height: FKSizes.spaceBtwSections),
              // Footer
              FkFormButton(), // Row
            ],
          ),
        ),
      ),
    );
  }
}
