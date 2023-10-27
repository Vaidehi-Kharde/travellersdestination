import 'dart:async';
import 'package:flutter/material.dart';
import 'package:travellersdestination/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login_Page(),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
              child: const Text("Hello World", style: TextStyle(
              decoration: TextDecoration.overline,
              fontSize: 60,
             )
            ),
          ),
        ),
      ),
    );
  }
}
