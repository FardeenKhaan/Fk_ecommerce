import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/constants/text_Strings.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/helper_utils.dart';

class FkSignUpForm extends StatelessWidget {
  const FkSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FkHelperFunction.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: FKSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email TextField
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: FKTextStrings.firstName,
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                SizedBox(width: FKSizes.spaceBtwInputFields),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: FKTextStrings.lastName,
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ],
            ),
            SizedBox(height: FKSizes.spaceBtwInputFields),
            // Username TextField
            TextFormField(
              expands: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: FKTextStrings.username,
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: FKSizes.spaceBtwInputFields),

            // Email TextField
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: FKTextStrings.email,
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: FKSizes.spaceBtwInputFields),
            // Phone Number TextField
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: FKTextStrings.phoneNo,
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: FKSizes.spaceBtwInputFields),

            // Password TextField
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: FKTextStrings.password,
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: FKSizes.spaceBtwInputFields / 2),
            // REMEMBER ME Checkbox
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {
                    // Handle checkbox state change
                  },
                ),
                // Text(
                //   FKTextStrings.iAgreeTo,
                //   style: Theme.of(context).textTheme.bodyMedium,
                // ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${FKTextStrings.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: '${FKTextStrings.privacyPolicy}',
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? FKColors.white : FKColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? FKColors.white : FKColors.primary,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: '${FKTextStrings.termsOfUse}',
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? FKColors.white : FKColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? FKColors.white : FKColors.primary,
                        ),
                      ),
                    ],
                  ), // TextSpan
                ), // Text.rich
              ],
            ),
            SizedBox(height: FKSizes.spaceBtwSections),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                },
                child: Text(FKTextStrings.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
