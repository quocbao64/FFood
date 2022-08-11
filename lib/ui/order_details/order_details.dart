import 'package:ffood/constants/constants.dart';
import 'package:flutter/material.dart';

import "components/body.dart";

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    const textStyleRegular =
        TextStyle(fontSize: fontSizeBase, color: Colors.white);

    const textStyleBold = TextStyle(
        fontSize: fontSizeLarge,
        fontWeight: FontWeight.bold,
        color: Colors.white);

    return Scaffold(
      body: const Body(),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 18),
        height: 210,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/images/Pattern.png")),
            borderRadius: BorderRadius.circular(kDefaultBorder),
            gradient:
                const LinearGradient(colors: [kPrimaryColor, kPrimaryColor2])),
        child: Padding(
          padding: const EdgeInsets.only(top: kDefaultPadding),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Sub-Total",
                          style: textStyleRegular,
                        ),
                        Text(
                          "1070\$",
                          style: textStyleRegular,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Delivery Charge",
                          style: textStyleRegular,
                        ),
                        Text(
                          "150\$",
                          style: textStyleRegular,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Discount",
                          style: textStyleRegular,
                        ),
                        Text(
                          "50\$",
                          style: textStyleRegular,
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: kDefaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Total",
                            style: textStyleBold,
                          ),
                          Text(
                            "1070\$",
                            style: textStyleBold,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 52,
                  width: size.width - kDefaultPadding * 3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Place My Order",
                        style: TextStyle(
                            fontSize: fontSizeBase,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
