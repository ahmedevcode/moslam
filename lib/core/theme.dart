import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Mythemedata {
  static const Color primaryColor = Color.fromARGB(255, 169, 148, 95);
  static const Color darkColor = Color.fromARGB(255, 17, 23, 40);
  static const Color accentcolor = Color.fromARGB(255, 250, 117, 29);

  static final ThemeData lighttheme = ThemeData(
      primaryTextTheme:
      TextTheme(headline4: TextStyle(color: Colors.black, fontSize: 24)),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: Mythemedata.primaryColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ));
  static final ThemeData darktheme = ThemeData(
      primaryTextTheme:
      TextTheme(headline4: TextStyle(color: Colors.white, fontSize: 24)),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: Mythemedata.darkColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Mythemedata.accentcolor,
        unselectedItemColor: Colors.white,
      ));
}
