import 'package:flutter/material.dart';
import 'package:foodapp/ui/common/HexColor.dart';
import 'package:foodapp/ui/page/home/Home.dart';

void main() {
  runApp(new Login());
}

class Login extends StatelessWidget {
  final List<String> food = <String>["Food", "Meat", "Medicine", ""];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: HexColor('#f5f2f0'),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
