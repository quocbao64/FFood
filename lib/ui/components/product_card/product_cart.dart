import 'package:ffood/constants/constants.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.restaurantName,
    required this.price,
  }) : super(key: key);

  final String imageUrl;
  final String productName;
  final String restaurantName;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding / 2, vertical: kDefaultPadding / 2),
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 14, vertical: kDefaultPadding),
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  offset: Offset(12, 26), blurRadius: 50, color: kShadowColor)
            ],
            borderRadius: BorderRadius.circular(kDefaultBorder),
            color: Colors.white),
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
                    ],
                  ),
                ),
              ],
            ),
            Text(
              price.toString() + "\$",
              style: const TextStyle(
                  fontSize: fontSize2XLarge,
                  color: kTextColor2,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
