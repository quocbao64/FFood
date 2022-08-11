import 'package:ffood/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductCardWithIncrementCounter extends StatefulWidget {
  const ProductCardWithIncrementCounter({
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
  State<ProductCardWithIncrementCounter> createState() =>
      _ProductCardWithIncrementCounterState();
}

class _ProductCardWithIncrementCounterState
    extends State<ProductCardWithIncrementCounter> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2, horizontal: 14),
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 2, vertical: kDefaultPadding),
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(offset: Offset(12, 26), blurRadius: 50, color: kShadowColor)
        ], borderRadius: BorderRadius.circular(kDefaultBorder)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(widget.imageUrl),
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.productName,
                        style: const TextStyle(
                            fontSize: fontSizeMedium,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.restaurantName,
                        style: TextStyle(
                            fontSize: fontSizeBase,
                            color: Colors.black.withOpacity(.3)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.price.toString() + "\$",
                        style: const TextStyle(
                            fontSize: fontSizeXLarge, color: kPrimaryColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                _itemCount != 0
                    ? IconButton(
                        onPressed: () => setState(() => _itemCount--),
                        icon: const ImageIcon(
                          AssetImage("assets/icons/IconMinus.png"),
                          color: kPrimaryColor,
                        ),
                      )
                    : Container(),
                const SizedBox(
                  width: 8,
                ),
                Text(_itemCount.toString()),
                const SizedBox(
                  width: 8,
                ),
                IconButton(
                  onPressed: () => setState(() => _itemCount++),
                  icon: const Icon(IconlyBold.plus),
                  iconSize: 26,
                  color: kPrimaryColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
