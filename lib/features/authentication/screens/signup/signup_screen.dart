import 'package:fk_ecommerce/common/styles/spacing_styles.dart';
import 'package:fk_ecommerce/common/widgets_signUpIn/form_buttons.dart';
import 'package:fk_ecommerce/common/widgets_signUpIn/form_divider.dart';
import 'package:fk_ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:fk_ecommerce/features/authentication/screens/signup/widgets/signup_header.dart';
import 'package:fk_ecommerce/utils/constants/text_Strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: FkSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const FkSignUpHeader(),
              const FkSignUpForm(),
              const FkFormDivider(dividerText: FKTextStrings.orSignUpWith),
              const FkFormButton(),
            ],
          ),
        ),
      ),
    );
  }
}
