import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/utils/sized_box.dart';
import 'package:movie_app/utils/text_styles.dart';
import 'package:movie_app/views/bottom_navigation/provider/bottom_navigation_bar_provider.dart';
import 'package:provider/provider.dart';

import '../../../utils/colors.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<BottomNavbarProvider>(
        builder: (context, navigationProvider, child) {
      return navigationProvider.screensList[navigationProvider.bottomNavIndex];
    }), bottomNavigationBar: Consumer<BottomNavbarProvider>(
      builder: (context, navigationProvider, child) {
        return AnimatedBottomNavigationBar.builder(
          height: 75,
          backgroundColor: primaryColor,
          elevation: 0,
          activeIndex: navigationProvider.bottomNavIndex,
          gapLocation: GapLocation.none,
          notchSmoothness: NotchSmoothness.sharpEdge,
          leftCornerRadius: 10,
          rightCornerRadius: 10,
          onTap: (index) {
            navigationProvider.onPagechanged(index);
          },
          itemCount: navigationProvider.iconsList.length,
          tabBuilder: (int index, bool isActive) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                10.sh,
                Image.asset(navigationProvider.iconsList[index],
                    height: 20,
                    width: 20,
                    color: isActive ? kwhiteColor : kgreyColor),
                10.sh,
                Text(
                  navigationProvider.screenNamesList[index],
                  style: poppinsStyle(
                      size: 10,
                      weight: FontWeight.w700,
                      color: isActive ? kwhiteColor : kgreyColor),
                ),
                10.sh,
              ],
            );
          },
        );
      },
    ));
  }
}
