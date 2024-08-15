import 'package:flutter/material.dart';
import 'package:kaboii_app/common/widgets/brand_card/brand_showcase.dart';
import 'package:kaboii_app/common/widgets/layouts/grid_layout.dart';
import 'package:kaboii_app/common/widgets/product_cards/product_card_vertical.dart';
import 'package:kaboii_app/common/widgets/texts/section_heading.dart';
import 'package:kaboii_app/utils/constants/image_strings.dart';
import 'package:kaboii_app/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TBrandShowcase(
                  images: [
                    TImages.productImage1,
                    TImages.productImage2,
                    TImages.productImage3
                  ],
                ),
                const TBrandShowcase(
                  images: [
                    TImages.productImage1,
                    TImages.productImage2,
                    TImages.productImage3
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                TSectionHeading(
                    title: 'You might like',
                    showActionButton: true,
                    onPressed: () {}),
                const SizedBox(height: TSizes.spaceBtwItems),
                TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductcardVertical()),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
          )
        ]);
  }
}
