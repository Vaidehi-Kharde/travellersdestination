import 'package:flutter/material.dart';
import 'package:travellersdestination/Splash.dart';
import 'package:travellersdestination/forgotpassword.dart';
import 'package:travellersdestination/home.dart';
import 'package:travellersdestination/login.dart';
import 'package:travellersdestination/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
        routes:{
          '/login.': (context) => Login_Page(),
          '/register': (context) => MyRegister(),
          '/forgotpassword': (context) => Reset(),
          '/home': (context) => Home_Page(),
        },
      );
  }
}
