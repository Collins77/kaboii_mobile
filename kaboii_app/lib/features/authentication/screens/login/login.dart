import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kaboii_app/common/styles/spacing_styles.dart';
import 'package:kaboii_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:kaboii_app/features/authentication/screens/signup/signup.dart';
import 'package:kaboii_app/navigation_menu.dart';
import 'package:kaboii_app/utils/constants/colors.dart';
import 'package:kaboii_app/utils/constants/image_strings.dart';
import 'package:kaboii_app/utils/constants/sizes.dart';
import 'package:kaboii_app/utils/constants/texts.dart';
import 'package:kaboii_app/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? TImages.lightAppLogo: TImages.darkAppLogo),
                  ),
                  Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                  Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
                ]),

                Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                    child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right), labelText: TTexts.email
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),
                    
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check), 
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields / 2),
                    
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value){}),
                              const Text(TTexts.rememberMe),
                            ],
                          ),
                          TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(TTexts.forgetPassword),)
                      ],),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(TTexts.signIn))),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(TTexts.createAccount))),                    ],
                  ),
                  ),
                ),

                /// Divider 

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(child: Divider(color: dark ? TColors.darkGrey : TColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
                    Text(TTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
                    Flexible(child: Divider(color: dark ? TColors.darkGrey : TColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
                  ],
                ),

                const SizedBox(height: TSizes.spaceBtwSections),

                /// Footer
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                          image: AssetImage(TImages.google),
                        ),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems),
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                          image: AssetImage(TImages.facebook),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
