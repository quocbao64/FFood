import 'package:flutter/material.dart';

import 'components/body.dart';

class PopularMenuView extends StatelessWidget {
  const PopularMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Body(size: size),
    );
  }
}
