import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/colors.dart';
import 'package:profile/contact_us_screen.dart';
import 'package:profile/daily_screen.dart';
import 'package:profile/home_page_screen.dart';
import 'package:profile/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    HomePage(),
    ProductScreen(),
    ContactUsScreen(),
    DailyScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
      bottomNavigationBar: getFooter(),
      floatingActionButton: SafeArea(
        child: SizedBox(
          child: FloatingActionButton(
            backgroundColor: buttonColor,
            onPressed: () {},
            child: Icon(
              Icons.add,
              size: 20,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    List<IconData> iconitems = [
      CupertinoIcons.home,
      CupertinoIcons.cart,
      CupertinoIcons.bubble_left_bubble_right,
      CupertinoIcons.person,
    ];
    return AnimatedBottomNavigationBar(
      onTap: (index) {
        setTabs(index);
      },
      backgroundColor: primary,
      icons: iconitems,
      splashColor: secondary,
      inactiveColor: black.withOpacity(0.5),
      gapLocation: GapLocation.center,
      activeIndex: pageIndex,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      iconSize: 25,
      rightCornerRadius: 10,
      elevation: 2,
    );
  }

  setTabs(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
