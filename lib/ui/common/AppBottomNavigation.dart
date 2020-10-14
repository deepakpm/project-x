import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class AppBottomNavigation extends StatelessWidget {
  final iconList ;
  final Function onTabPress;
  final int activeIndex;
  final Animation<double> animation;

  AppBottomNavigation({this.activeIndex, this.onTabPress,this.animation,this.iconList});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedBottomNavigationBar(
      icons: iconList,
      backgroundColor: Colors.white,
      activeIndex: activeIndex,
      iconSize: 30,
      activeColor:Colors.blueGrey,
      splashColor: Colors.blueGrey,
      inactiveColor: Colors.grey,
      height: 60,
      notchAndCornersAnimation: animation,
      splashSpeedInMilliseconds: 300,
      notchSmoothness: NotchSmoothness.defaultEdge,
      gapLocation: GapLocation.end,
      leftCornerRadius: 0,
      onTap: onTabPress,
      rightCornerRadius: 0,
    );
  }
}
