import 'package:ffood/ui/components/header/header.dart';
import 'package:ffood/ui/order_details/order_details.dart';
import 'package:flutter/material.dart';

import 'product_cart_with_detail_btn.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            HeaderScreen(title: "My Orders", size: size),
            Column(children: [
              ProductCardWithDetailBtn(
                isOrder: false,
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrderDetailsView())),
                imageUrl: 'assets/images/PhotoMenu.png',
                productName: 'Spacy fresh crab',
                restaurantName: 'Warenik kita',
                price: 220,
              ),
              ProductCardWithDetailBtn(
                isOrder: false,
                press: () {},
                imageUrl: 'assets/images/PhotoMenu.png',
                productName: 'Spacy fresh crab',
                restaurantName: 'Warenik kita',
                price: 220,
              ),
              ProductCardWithDetailBtn(
                isOrder: false,
                press: () {},
                imageUrl: 'assets/images/PhotoMenu.png',
                productName: 'Spacy fresh crab',
                restaurantName: 'Warenik kita',
                price: 220,
              ),
              ProductCardWithDetailBtn(
                isOrder: true,
                press: () {},
                imageUrl: 'assets/images/PhotoMenu.png',
                productName: 'Spacy fresh crab',
                restaurantName: 'Warenik kita',
                price: 220,
              ),
              ProductCardWithDetailBtn(
                isOrder: true,
                press: () {},
                imageUrl: 'assets/images/PhotoMenu.png',
                productName: 'Spacy fresh crab',
                restaurantName: 'Warenik kita',
                price: 220,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
