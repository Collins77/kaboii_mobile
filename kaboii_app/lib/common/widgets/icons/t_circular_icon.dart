import 'package:flutter/material.dart';
import 'package:kaboii_app/utils/constants/colors.dart';
import 'package:kaboii_app/utils/constants/sizes.dart';
import 'package:kaboii_app/utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width, 
    this.height, 
    this.size = TSizes.lg, 
    required this.icon, 
    this.color, 
    this.backgroundColor, 
    this.onPressed,
  });

  // final bool dark;
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: THelperFunctions.isDarkMode(context)
            ? TColors.black.withOpacity(0.9)
            : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon, color: color, size: size)),
    );
  }
}
