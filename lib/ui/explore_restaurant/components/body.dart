import 'package:ffood/constants/constants.dart';
import 'package:ffood/ui/components/header/header.dart';
import 'package:ffood/ui/components/restaurant_card/restaurant_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          HeaderScreen(title: "Find Your \nFavorite Food", size: size),
          const Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Text(
              "Popular Restaurant",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: fontSizeMedium),
            ),
          ),
          SizedBox(
            height: size.height,
            width: size.width - kDefaultPadding,
            // padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Expanded(
              child: GridView.builder(
                  itemCount: 8,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => const RestaurantCard(
                        imageUrl: "assets/images/ResturantImage.png",
                        name: "Vegan Resto",
                        time: "12 Mins",
                      )),
            ),
          )
        ]),
      ),
    );
  }
}
