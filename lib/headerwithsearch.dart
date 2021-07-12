import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_plant_pp/constance/constance.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          child: Stack(
            children: [
              Container(
                height: size.height * .4,
                padding: EdgeInsets.only(
                  left: padding,
                  right: padding,
                ),
                decoration: BoxDecoration(
                    color: primarycolor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(86),
                        bottomRight: Radius.circular(86))),
                child: Row(
                  children: [
                    Text(
                      "Hi Uishopy",
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Image(image: AssetImage("assets/images/logo.png"))
                  ],
                ),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0.0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: padding),
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    height: 54,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: primarycolor.withOpacity(.23))
                        ]),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                  color: primarycolor.withOpacity(.5)),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        SvgPicture.asset("assets/icons/search.svg"),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
