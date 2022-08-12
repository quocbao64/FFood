import 'package:ffood/constants/constants.dart';
import 'package:ffood/ui/components/header/header.dart';
import 'package:ffood/ui/explore_restaurant/explore_restaurant_view.dart';
import 'package:ffood/ui/home/components/banner_discount.dart';
import 'package:ffood/ui/home/components/nearest_restaurant.dart';
import 'package:ffood/ui/home/components/popular_menu.dart';
import 'package:ffood/ui/home/components/section_title.dart';
import 'package:ffood/ui/popular_menu/popular_menu_view.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderScreen(
            title: "Find Your \nFavorite Food",
            size: size,
          ),
          BannerDiscount(
            size: size,
            imageUrl: 'assets/images/ImageVoucher.png',
            title: "Special Deal For \nAugust",
          ),
          SectionTitle(
            title: "Nearest Restaurant",
            press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExploreRestaurantView(),
                )),
          ),
          NearestRestaurant(size: size),
          SectionTitle(
              title: "Popular Menu",
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PopularMenuView(),
                  ))),
          const PopularMenu(),
          kBoxPaddingBottom
        ],
      ),
    );
  }
}
