import 'package:flutter/material.dart';
import 'package:foodapp/ui/common/CardSize.dart';

class CustomCard extends StatelessWidget {
  final CardSize cardSize;
  final Widget cardWidget;

  CustomCard({this.cardSize, @required this.cardWidget});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double cardWidth =
        cardSize == CardSize.HALF ? MediaQuery.of(context).size.width / 2 : 1;

    print(cardWidth);
    return Card(
      child: new Container(
        width: cardWidth,
        child: cardWidget,
      ),
    );
  }
}
