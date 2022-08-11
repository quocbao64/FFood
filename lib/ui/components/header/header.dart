import 'package:ffood/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key, required this.size, required this.title})
      : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
            height: size.height * 0.27,
            child: Stack(
              children: <Widget>[
                Positioned(
                  right: 0,
                  top: 0,
                  child: Opacity(
                    opacity: 0.2,
                    child: Image.asset("assets/images/background2.png"),
                  ),
                ),
                Container(
                  height: size.height * 0.2 - 25,
                  margin: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding + 5),
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: kTextColor, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child:
                            Image.asset("assets/images/IconNotification.png"),
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: kShadowColor,
                              blurRadius: 50,
                              offset: Offset(11, 28))
                        ]),
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kSecondaryColorBackground),
                      child: Row(children: <Widget>[
                        SvgPicture.asset("assets/icons/IconSearch.svg"),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "What do you want to order?",
                                hintStyle: TextStyle(color: kSecondaryColor),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: kDefaultPadding)),
                          ),
                        ),
                      ]),
                    ))
              ],
            )),
      ],
    );
  }
}
