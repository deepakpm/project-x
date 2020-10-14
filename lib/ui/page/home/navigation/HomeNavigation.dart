import 'package:flutter/material.dart';
import 'package:foodapp/ui/common/Card.dart';
import 'package:foodapp/ui/common/CardSize.dart';
import 'package:foodapp/ui/common/Chips.dart';
import 'package:foodapp/ui/page/components/Shop.dart';

class NavigationScreen extends StatefulWidget {
  List<String> filterItem = <String>[
    "Food",
    "Store",
    "Meat",
    "Medicine",
  ];

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext buildContext, bool isScroll) {
          return <Widget>[
            SliverAppBar(
              leading: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.location_on,
                  color: Colors.blueGrey,
                ),
              ),
              leadingWidth: 30,
              title: Text(
                "Pattambi",
                style: TextStyle(fontSize: 20, color: Colors.blueGrey),
              ),
              backgroundColor: Colors.white,
              expandedHeight: 200,
              floating: true,
              pinned: true,
              bottom: AppBar(
                toolbarHeight: 120,
                backgroundColor: Colors.white,
                flexibleSpace: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.location_on),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 11, top: 11, right: 15),
                              hintText:
                                  "Search  Restaurants / Shop / Meats/ Medicine"),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border:
                                Border.all(width: 1, color: Colors.blueGrey)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: widget.filterItem
                              .map(
                                (e) => Chips(
                                  title: e,
                                  onPress: () {},
                                ),
                              )
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomCard(
                        cardSize: CardSize.HALF,
                        cardWidget: Shop(),
                      );
                    }))));
  }
}
