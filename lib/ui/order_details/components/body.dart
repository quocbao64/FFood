import 'package:ffood/constants/constants.dart';
import 'package:ffood/ui/components/header_with_back_button/header_with_back_button.dart';
import 'package:ffood/ui/order_details/components/list_order_details.dart';
import 'package:ffood/ui/order_details/components/product_card_with_increment_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
            ListOrderDetails()
          ],
        ),
      ),
    );
  }
}
