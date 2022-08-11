import 'package:ffood/ui/components/header_with_back_button/header_with_back_button.dart';
import 'package:ffood/ui/order_details/components/product_card_with_increment_counter.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            HeaderWithBackButton(title: "Order Details"),
            ProductCardWithIncrementCounter(
              imageUrl: 'assets/images/PhotoMenu.png',
              productName: 'Spacy fresh crab',
              restaurantName: 'Warenik kita',
              price: 220,
            )
          ],
        ),
      ),
    );
  }
}
