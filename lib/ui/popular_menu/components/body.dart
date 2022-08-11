import 'package:ffood/constants/constants.dart';
import 'package:ffood/ui/components/header_with_back_button/header_with_back_button.dart';
import 'package:ffood/ui/components/product_card/product_cart.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          const HeaderWithBackButton(title: "Popular Menu"),
          SizedBox(
              width: size.width - kDefaultPadding,
              child: Expanded(
                child: Column(
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
                ),
              ))
        ]),
      ),
    );
  }
}
