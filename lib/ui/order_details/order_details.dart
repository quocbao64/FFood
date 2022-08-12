import 'package:ffood/ui/order_details/components/bottom_my_order_bar.dart';
import 'package:flutter/material.dart';

import "components/body.dart";

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: const Body(),
      bottomNavigationBar: BottomMyOrderBar(size: size),
    );
  }
}
