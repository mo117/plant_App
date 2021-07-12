import 'package:flutter/material.dart';
import 'package:ui_plant_pp/constance/constance.dart';

import 'details/details_screen.dart';

class Recomndedplantcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PlantCard(
            image: "assets/images/image_1.png",
            title: "samnatha",
            country: "russia",
            price: 440,
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          PlantCard(
            image: "assets/images/image_1.png",
            title: "samnatha",
            country: "russia",
            price: 440,
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          PlantCard(
            image: "assets/images/image_1.png",
            title: "samnatha",
            country: "russia",
            price: 440,
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          PlantCard(
              image: "assets/images/image_1.png",
              title: "samnatha",
              country: "russia",
              price: 440,
              press: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ),
                );
              },
          ),
        ],
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  const PlantCard({this.country, this.image, this.price, this.title, this.press});
  final String country, image, title;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: EdgeInsets.only(
          left: padding, top: padding / 2, bottom: padding * 2.5),
      child: Column(
        children: [
          Image(image: AssetImage("$image")),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(padding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: primarycolor.withOpacity(.23),
                    )
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: primarycolor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text("\$$price",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: primarycolor)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
