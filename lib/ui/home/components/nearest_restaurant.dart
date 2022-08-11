import 'package:ffood/ui/components/restaurant_card/restaurant_card.dart';
import 'package:flutter/material.dart';

class NearestRestaurant extends StatelessWidget {
  const NearestRestaurant({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const <Widget>[
          RestaurantCard(
            imageUrl: 'assets/images/ResturantImage.png',
            name: 'Vergan Resto',
            time: '12 Mins',
          ),
          RestaurantCard(
            imageUrl: 'assets/images/ResturantImage.png',
            name: 'Vergan Resto',
            time: '12 Mins',
          ),
          RestaurantCard(
            imageUrl: 'assets/images/ResturantImage.png',
            name: 'Vergan Resto',
            time: '12 Mins',
          ),
          RestaurantCard(
            imageUrl: 'assets/images/ResturantImage.png',
            name: 'Vergan Resto',
            time: '12 Mins',
          ),
        ],
      ),
    );
  }
}
