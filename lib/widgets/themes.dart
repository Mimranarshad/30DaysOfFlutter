import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../veriables/veriables.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: dark),
        ),
        textTheme: TextTheme(
          subtitle1: TextStyle(color: dark, fontSize: 15),
          bodyText1: TextStyle(color: dark, fontSize: 15),
          bodyText2: TextStyle(color: dark, fontSize: 15),
          button: TextStyle(fontSize: 15.0),
        ),
      );

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
