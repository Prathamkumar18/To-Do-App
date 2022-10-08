import 'package:flutter/material.dart';

class MyTheme {
  static Color tdBGColor = Color(0xFFEEEFF5);
  static Color tdBlack = Color(0XFFFF3A3A3A);
  static Color tdGrey = Color(0XFF717171);
  static Color tdBlue = Color(0xFF5F52EE);
  static Color tdRed = Color(0XFFDA4040);
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        canvasColor: tdBGColor,
        cardColor: Colors.white,
        accentColor: Colors.black,
        primaryColor: Colors.black,
        highlightColor: Colors.red,
        appBarTheme: AppBarTheme(
          color: tdBGColor,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        buttonColor: Color.fromARGB(255, 23, 21, 79),
        highlightColor: Colors.green,
        primaryColor: Color.fromARGB(255, 29, 71, 194),
        cardColor: Colors.black,
        canvasColor: Color.fromARGB(255, 17, 24, 38),
        brightness: Brightness.dark,
        accentColor: Color.fromARGB(255, 80, 201, 248),
        appBarTheme: AppBarTheme(
          color: Colors.black,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
          textTheme: Theme.of(context).textTheme,
        ),
      );
}
