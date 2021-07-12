import 'package:flutter/material.dart';
import 'package:ui_plant_pp/constance/constance.dart';

class FeaturedPlant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          Featured("assets/images/bottom_img_1.png", () {}),
          Featured("assets/images/bottom_img_2.png", () {}),
        ],
      ),
    );
  }
}

class Featured extends StatelessWidget {
  Featured(this.image, this.press);
  String image;
  Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 300,
        height: 185,
        margin: EdgeInsets.only(
            top: padding / 2, bottom: padding / 2, left: padding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                image: AssetImage("$image"), fit: BoxFit.cover)),
      ),
    );
  }
}
