import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kaboii_app/common/widgets/appbar/appbar.dart';
import 'package:kaboii_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:kaboii_app/common/widgets/list_styles/settings_menu_tile.dart';
import 'package:kaboii_app/common/widgets/list_styles/user_profile_tile.dart';
import 'package:kaboii_app/common/widgets/texts/section_heading.dart';
import 'package:kaboii_app/features/personalization/screens/profile/profile.dart';
import 'package:kaboii_app/utils/constants/colors.dart';
import 'package:kaboii_app/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  TUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  const TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                   
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-Progress and Completed Orders',
                    
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                    
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                    
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification message',
                    
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                    
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Upload Data', subTitle: 'Upload Data to you Cloud Firebase'),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Manage data usage and connected accounts',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search results is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

