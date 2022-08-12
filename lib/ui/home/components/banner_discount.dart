import 'package:ffood/constants/constants.dart';
import 'package:flutter/material.dart';

class BannerDiscount extends StatelessWidget {
  const BannerDiscount({
    Key? key,
    required this.size,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  final Size size;
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      margin: const EdgeInsets.all(
        kDefaultPadding,
      ),
      height: 150,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imageUrl)),
          gradient: kPrimaryGradientColor,
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: <Widget>[
          SizedBox(width: size.width / 2 - kDefaultPadding),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title,
                  style: const TextStyle(
                      fontSize: fontSizeLarge,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  maxLines: 2),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Buy Now"),
                  style: TextButton.styleFrom(
                      primary: kPrimaryColor,
                      textStyle: const TextStyle(
                          fontSize: fontSizeSmall, fontWeight: FontWeight.bold),
                      backgroundColor: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
