import 'package:ffood/constants/constants.dart';
import 'package:flutter/material.dart';

class ProductCardWithDetailBtn extends StatelessWidget {
  const ProductCardWithDetailBtn({
    Key? key,
    required this.isOrder,
    required this.press,
    required this.imageUrl,
    required this.productName,
    required this.restaurantName,
    required this.price,
  }) : super(key: key);

  final String imageUrl;
  final String productName;
  final String restaurantName;
  final double price;
  final bool isOrder;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2, horizontal: 14),
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 14, vertical: kDefaultPadding),
        decoration: BoxDecoration(
            boxShadow: isOrder
                ? null
                : [
                    const BoxShadow(
                        offset: Offset(12, 26),
                        blurRadius: 50,
                        color: kShadowColor)
                  ],
            borderRadius: BorderRadius.circular(kDefaultBorder),
            color: isOrder ? kDisableBackgroundColor : Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(imageUrl),
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: const TextStyle(
                            fontSize: fontSizeMedium,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        restaurantName,
                        style: TextStyle(
                            fontSize: fontSizeBase,
                            color: Colors.black.withOpacity(.3)),
                      ),
                      Text(
                        price.toString() + "\$",
                        style: const TextStyle(
                            fontSize: fontSizeXLarge, color: kPrimaryColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
                width: 79,
                height: 29,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.5),
                    color: isOrder ? kDisableColor : kPrimaryColor),
                child: TextButton(
                    onPressed: isOrder ? null : press,
                    child: const Text(
                      "Details",
                      style: TextStyle(
                          color: Colors.white, fontSize: fontSizeSmall),
                    )))
          ],
        ),
      ),
    );
  }
}
