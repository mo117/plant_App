import 'package:flutter/material.dart';
import 'package:ui_plant_pp/constance/constance.dart';

class Titlewithbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: padding / 4),
            child: Text(
              "Recomended",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 7,
                margin: EdgeInsets.only(right: padding / 4),
              ))
        ],
      ),
    );
  }
}
