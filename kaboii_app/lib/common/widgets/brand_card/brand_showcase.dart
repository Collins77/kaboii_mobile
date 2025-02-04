import 'package:flutter/material.dart';
import 'package:kaboii_app/common/widgets/brand_card/brand_card.dart';
import 'package:kaboii_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:kaboii_app/utils/constants/colors.dart';
import 'package:kaboii_app/utils/constants/sizes.dart';
import 'package:kaboii_app/utils/helpers/helper_functions.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems),
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(right: TSizes.md),
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkerGrey
          : TColors.light,
      child: Image(
          fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}
