import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_plant_pp/constance/constance.dart';
import 'package:ui_plant_pp/headerwithsearch.dart';
import 'package:ui_plant_pp/plantcard.dart';

import '../featuredpalnt.dart';
import '../titlewithbutton.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Header(),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Row(
              children: [
                Titlewithbutton(),
                Spacer(),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "more",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: primarycolor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
          ),
          Recomndedplantcard(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Row(
              children: [
                Titlewithbutton(),
                Spacer(),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Featured Plants",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: primarycolor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
          ),
          FeaturedPlant(),
        ],
      ),
    );
  }
}
