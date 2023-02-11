import 'package:flutter/material.dart';
import 'Pages/home_page.dart';
import 'Pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Utils/routes.dart';
import 'initials/splash.dart';
import 'veriables/Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          subtitle1: TextStyle(color: dark, fontSize: 15),
          bodyText1: TextStyle(color: dark, fontSize: 15),
          bodyText2: TextStyle(color: dark, fontSize: 15),
          button: TextStyle(fontSize: 15.0),
        ),
      ),
      routes: {
        '/': (context) => SplashScreen(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
