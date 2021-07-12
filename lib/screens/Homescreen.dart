import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_plant_pp/components/body.dart';
import 'package:ui_plant_pp/components/my_bottom_nav_bar.dart';
import 'package:ui_plant_pp/constance/constance.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}

AppBar buildAppbar() {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
  );
}
