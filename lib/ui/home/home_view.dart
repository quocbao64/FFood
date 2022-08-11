import 'package:ffood/constants/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Body(
          size: size,
        ));
  }
}
