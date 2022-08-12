import 'package:ffood/constants/constants.dart';
import 'package:ffood/ui/cart/components/product_cart_with_detail_btn.dart';
import 'package:ffood/ui/order_details/order_details.dart';
import 'package:flutter/material.dart';

class ListMyOrders extends StatelessWidget {
  const ListMyOrders({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding / 2),
      child: Column(children: [
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
          isOrder: true,
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
          isOrder: true,
          press: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const OrderDetailsView())),
          imageUrl: 'assets/images/PhotoMenu.png',
          productName: 'Spacy fresh crab',
          restaurantName: 'Warenik kita',
          price: 220,
        ),
      ]),
    );
  }
}
