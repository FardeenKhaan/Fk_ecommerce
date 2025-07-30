import 'package:fk_ecommerce/routes/app_routes.dart';
import 'package:fk_ecommerce/utils/constants/sizes.dart';
import 'package:fk_ecommerce/utils/constants/text_Strings.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class FkLoginForm extends StatelessWidget {
  const FkLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: FKSizes.spaceBtwSections),
        child: Column(
          children: [
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {
                        // Handle checkbox state change
                      },
                    ),
                    Text(
                      FKTextStrings.rememberMe,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                Spacer(),
                // FORGOT PASSWORD Button
                TextButton(
                  onPressed: () {
                    // Handle forgot password logic here
                    Get.toNamed(Routes.ForgotPassword);
                  },
                  child: Text(
                    FKTextStrings.forgetPassword,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
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
                child: Text(FKTextStrings.signIn),
              ),
            ),
            SizedBox(height: FKSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.toNamed(Routes.SIGNUP);
                },
                child: Text(FKTextStrings.createAccount),
              ),
            ),
            // SizedBox(height: FKSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
