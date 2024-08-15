import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kaboii_app/common/widgets/appbar/appbar.dart';
import 'package:kaboii_app/common/widgets/images/t_circular_image.dart';
import 'package:kaboii_app/common/widgets/texts/section_heading.dart';
import 'package:kaboii_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:kaboii_app/utils/constants/image_strings.dart';
import 'package:kaboii_app/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80, height: 80),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title: 'Name', value: 'Collins Muema', onPressed: () {}),
              TProfileMenu(title: 'Username', value: 'Collins', onPressed: () {}),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              const TSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title: 'User ID', value: '37872405', icon: Iconsax.copy, onPressed: () {}),
              TProfileMenu(title: 'E-mail', value: 'collinsmuemah@gmail.com', onPressed: () {}),
              TProfileMenu(title: 'Phone Number', value: '+254791448827', onPressed: () {}),
              TProfileMenu(title: 'Date of Birth', value: '12 Oct, 1994', onPressed: () {}),

              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red)),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
