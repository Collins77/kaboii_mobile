import 'package:flutter/material.dart';
import 'package:kaboii_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:kaboii_app/features/shop/screens/home/home.dart';
import 'package:kaboii_app/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWIdget(
      child: Container(
        color: TColors.primary,
        // padding: const EdgeInsets.only(bottom: 0),
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: TCircularContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: 100,
                  right: -300,
                  child: TCircularContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1))),
                  child,
            ],
          ),
      ),
    );
  }
}
