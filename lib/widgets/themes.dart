// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          //textTheme: Theme.of(context).textTheme,
        ),
      );
  // static ThemeData darktheme(BuildContext context) => ThemeData(
  //   brightness: Brightness.light,
  //   // ignore: prefer_const_constructors
  //   appBarTheme: AppBarTheme(
  //     color: Colors.white,
  //     elevation: 0.0,
  //     iconTheme: IconThemeData(color: Colors.black),
  //     //textTheme: Theme.of(context).textTheme,
  //   ),
  // );   
}
