import 'package:flutter/material.dart';
import 'package:kaboii_app/common/widgets/appbar/appbar.dart';
import 'package:kaboii_app/common/widgets/appbar/tabbar.dart';
import 'package:kaboii_app/common/widgets/brand_card/brand_card.dart';
import 'package:kaboii_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:kaboii_app/common/widgets/layouts/grid_layout.dart';
import 'package:kaboii_app/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:kaboii_app/common/widgets/texts/section_heading.dart';
import 'package:kaboii_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:kaboii_app/utils/constants/colors.dart';
import 'package:kaboii_app/utils/constants/sizes.dart';
import 'package:kaboii_app/utils/helpers/helper_functions.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: TColors.black,
            ),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const TSearchContainer(
                            text: 'Search Stores',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        TSectionHeading(
                            title: 'Featured Brands',
                            showActionButton: true,
                            onPressed: () {}),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                        TGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const TBrandCard(showBorder: false);
                          },
                        )
                      ],
                    ),
                  ),
                  bottom: const TTabBar(
                    tabs: [
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Cosmetics')),
                    ],
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),   
              ],
            )),
      ),
    );
  }
}

