import 'package:ffood/ui/components/product_card/product_cart.dart';
import 'package:flutter/material.dart';

class PopularMenu extends StatelessWidget {
  const PopularMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        ProductCard(
          imageUrl: 'assets/images/PhotoMenu.png',
          productName: 'Green Noodle',
          restaurantName: 'Noodle Home',
          price: 150,
        ),
        ProductCard(
          imageUrl: 'assets/images/PhotoMenu.png',
          productName: 'Green Noodle',
          restaurantName: 'Noodle Home',
          price: 150,
        ),
        ProductCard(
          imageUrl: 'assets/images/PhotoMenu.png',
          productName: 'Green Noodle',
          restaurantName: 'Noodle Home',
          price: 150,
        ),
      ],
    );
  }
}
