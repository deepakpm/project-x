import 'package:flutter/material.dart';
import 'package:foodapp/ui/common/AppBottomNavigation.dart';
import 'package:foodapp/ui/common/AppFloatingActionBar.dart';
import 'package:foodapp/ui/page/home/navigation/HomeNavigation.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  var _bottomNavIndex = 0;
  AnimationController _animationController;
  Animation<double> animation;
  CurvedAnimation curve;
  final bottomNavScreens = <Widget>[
    NavigationScreen(),
    Container(
      child: Text("Order"),
    ),
    Container(
      child: Text("Explore"),
    ),
    Container(
      child: Text("Order"),
    ),
  ];

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);
  }

  final iconList = <IconData>[
    Icons.local_dining,
    Icons.explore,
    Icons.supervised_user_circle_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBody: true,
      floatingActionButton: AppFloatingAction(
        animation: animation,
        itemCount: 1,
        onPressCart: () => {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: bottomNavScreens.elementAt(_bottomNavIndex),
      bottomNavigationBar: AppBottomNavigation(
        activeIndex: _bottomNavIndex,
        animation: animation,
        iconList: iconList,
        onTabPress: (index) {
          setState(() => _bottomNavIndex = index);
        },
      ),
    );
  }
}
