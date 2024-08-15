import 'package:flutter/material.dart';
import 'package:kaboii_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:kaboii_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:kaboii_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:kaboii_app/common/widgets/layouts/grid_layout.dart';
import 'package:kaboii_app/common/widgets/product_cards/product_card_vertical.dart';
import 'package:kaboii_app/common/widgets/texts/section_heading.dart';
import 'package:kaboii_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:kaboii_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:kaboii_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:kaboii_app/utils/constants/image_strings.dart';
import 'package:kaboii_app/utils/constants/sizes.dart';

// import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Padding(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSearchContainer(
                    text: 'Find any product?',
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        /// Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  TSectionHeading(title: 'Popular Products', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductcardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class TCurvedEdgeWIdget extends StatelessWidget {
  const TCurvedEdgeWIdget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}
