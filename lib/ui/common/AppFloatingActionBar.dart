import 'package:flutter/material.dart';

class AppFloatingAction extends StatelessWidget {
  final Animation<double> animation;

  final int itemCount;
  final Function onPressCart;

  AppFloatingAction({this.animation, this.itemCount, this.onPressCart});


  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
        scale: animation,
        child: SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            mini: false,
            elevation: 8,
            backgroundColor: Colors.blueGrey,
            child: new Stack(
              children: <Widget>[
                new IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {},
                  iconSize: 35,
                  visualDensity: VisualDensity.comfortable,
                ),
                itemCount != 0
                    ? new Positioned(
                  right: 11,
                  top: 11,
                  child: new Container(
                    padding: EdgeInsets.all(2),
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 14,
                      minHeight: 14,
                    ),
                    child: Text(
                      itemCount.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
                    : new Container()
              ],
            ),
            onPressed: onPressCart,
          ),
        ));
  }
}
