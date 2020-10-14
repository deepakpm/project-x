import 'package:flutter/material.dart';
import 'package:foodapp/ui/common/FontSize.dart';

class CustomText extends StatelessWidget {
  final String title;
  final FontSize fontSize;
  final Color fontColor;

  CustomText({this.title, this.fontSize,this.fontColor});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text(
      title,
      style: new TextStyle(fontSize: fontSize.fontSize,color: fontColor),
    );
  }
}
