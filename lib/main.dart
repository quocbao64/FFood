import 'package:ffood/constants/constants.dart';
import 'package:ffood/ui/cart/cart_view.dart';
import 'package:ffood/ui/chat/chat_view.dart';
import 'package:ffood/ui/home/home_view.dart';
import 'package:ffood/ui/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Ninja',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int tabSelected = 0;
  final pages = [
    const HomeView(),
    const ProfileView(),
    const CartView(),
    const ChatView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        child: pages[tabSelected],
      ),
      bottomNavigationBar: Container(
          height: 74,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultBorder)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(kDefaultBorder),
            child: NavigationBarTheme(
              data: NavigationBarThemeData(
                  indicatorColor: kPrimaryColor.withOpacity(.1)),
              child: NavigationBar(
                backgroundColor: Colors.white,
                onDestinationSelected: (int index) {
                  setState(() {
                    tabSelected = index;
                  });
                },
                animationDuration: const Duration(milliseconds: 500),
                labelBehavior:
                    NavigationDestinationLabelBehavior.onlyShowSelected,
                selectedIndex: tabSelected,
                destinations: const [
                  NavigationDestination(
                    selectedIcon: Icon(IconlyBold.home, color: kPrimaryColor),
                    icon: Icon(IconlyBold.home, color: inActiveIconColor),
                    label: "Home",
                  ),
                  NavigationDestination(
                    selectedIcon:
                        Icon(IconlyBold.profile, color: kPrimaryColor),
                    icon: Icon(IconlyBold.profile, color: inActiveIconColor),
                    label: "Profile",
                  ),
                  NavigationDestination(
                    selectedIcon: Icon(IconlyBold.buy, color: kPrimaryColor),
                    icon: Icon(IconlyBold.buy, color: inActiveIconColor),
                    label: "Cart",
                  ),
                  NavigationDestination(
                    selectedIcon: Icon(IconlyBold.chat, color: kPrimaryColor),
                    icon: Icon(IconlyBold.chat, color: inActiveIconColor),
                    label: "Chat",
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
