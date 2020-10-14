import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
          child: Image(
            image: AssetImage('assets/restaurent.jpeg'),
            height: 150,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Test Restaurent",
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(children: [
                      Icon(Icons.star_rate),
                      Text("5"),
                      Text("/"),
                      Text("5")
                    ]),
                  ],
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Near Police Station, Pattambi",
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            )),
      ],
    ));
  }
}
