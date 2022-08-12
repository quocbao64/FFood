import 'package:ffood/constants/constants.dart';
import 'package:ffood/ui/cart/components/list_my_orders.dart';
import 'package:ffood/ui/components/header/header.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HeaderScreen(title: "My Orders", size: size),
          const ListMyOrders(),
          kBoxPaddingBottom
        ],
      ),
    );
  }
}
