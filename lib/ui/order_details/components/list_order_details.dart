import 'package:ffood/ui/order_details/components/product_card_with_increment_counter.dart';
import 'package:flutter/material.dart';

class ListOrderDetails extends StatelessWidget {
  const ListOrderDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProductCardWithIncrementCounter(
          imageUrl: 'assets/images/PhotoMenu.png',
          productName: 'Spacy fresh crab',
          restaurantName: 'Warenik kita',
          price: 220,
        ),
        ProductCardWithIncrementCounter(
          imageUrl: 'assets/images/PhotoMenu.png',
          productName: 'Spacy fresh crab',
          restaurantName: 'Warenik kita',
          price: 220,
        ),
        ProductCardWithIncrementCounter(
          imageUrl: 'assets/images/PhotoMenu.png',
          productName: 'Spacy fresh crab',
          restaurantName: 'Warenik kita',
          price: 220,
        ),
        ProductCardWithIncrementCounter(
          imageUrl: 'assets/images/PhotoMenu.png',
          productName: 'Spacy fresh crab',
          restaurantName: 'Warenik kita',
          price: 220,
        ),
      ],
    );
  }
}
