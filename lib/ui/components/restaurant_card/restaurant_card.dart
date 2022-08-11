import 'package:ffood/constants/constants.dart';
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
    required this.name,
    required this.time,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 2 - 30;

    return Container(
      margin:
          const EdgeInsets.only(bottom: kDefaultPadding, left: kDefaultPadding),
      child: Column(children: <Widget>[
        Container(
            width: itemWidth,
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(12, 26),
                      blurRadius: 50,
                      color: kShadowColor)
                ],
                borderRadius: BorderRadius.circular(kDefaultBorder)),
            child: Column(
              children: [
                Image.asset(imageUrl),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  time,
                  style: TextStyle(
                      fontSize: fontSizeBase,
                      color: Colors.black.withOpacity(.5)),
                )
              ],
            ))
      ]),
    );
  }
}
