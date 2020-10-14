import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/ui/common/FontSize.dart';
import 'package:foodapp/ui/common/Text.dart';

class Chips extends StatelessWidget {
  final String title;
  final Function onPress;

  Chips({this.title, this.onPress});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ActionChip(
      label: CustomText(title: title, fontSize: FontSize.SMALL),
      onPressed: onPress,
      backgroundColor: Colors.white,

      elevation: 5,labelPadding: EdgeInsets.only(left: 10,right: 10),
      padding: EdgeInsets.all(5),
    );
  }
}
