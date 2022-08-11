import 'package:ffood/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HeaderWithBackButton extends StatelessWidget
    implements PreferredSizeWidget {
  const HeaderWithBackButton({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              child: Opacity(
                opacity: 0.2,
                child: Image.asset("assets/images/background2.png"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: kDefaultPadding, left: kDefaultPadding),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 249, 168, 77)
                          .withOpacity(.1)),
                  child: IconButton(
                    icon: const Icon(
                      IconlyLight.arrowLeft2,
                      color: kPlaceholderColor,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: kDefaultPadding * 5,
                  left: kDefaultPadding,
                  bottom: kDefaultPadding / 2),
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: fontSize2XLarge + 3, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
