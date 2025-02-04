import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaboii_app/common/styles/spacing_styles.dart';
import 'package:kaboii_app/features/authentication/screens/login/login.dart';
import 'package:kaboii_app/utils/constants/image_strings.dart';
import 'package:kaboii_app/utils/constants/sizes.dart';
import 'package:kaboii_app/utils/constants/texts.dart';
import 'package:kaboii_app/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(image: const AssetImage(TImages.successIllustration), width: THelperFunctions.screenWidth() * 0.6,),
              
              const SizedBox(height: TSizes.spaceBtwSections,),
              Text(TTexts.yourAccountCreatedTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.yourAccountCreatedSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const LoginScreen()), child: const Text(TTexts.tContinue))),
            ],
          ),
        
        ),
      ),
    );
  }
}