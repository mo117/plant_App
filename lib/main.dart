import 'package:flutter/material.dart';
import 'package:ui_plant_pp/constance/constance.dart';
import 'package:ui_plant_pp/screens/Homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: primarycolor,
            textTheme: Theme.of(context).textTheme.apply(bodyColor: textcolor),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            scaffoldBackgroundColor: backgroundcolor
            ),
        title: 'Flutter Demo',
        home: HomeScreen());
  }
}
