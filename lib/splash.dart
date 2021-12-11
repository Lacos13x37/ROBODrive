 // ignore_for_file: prefer_const_constructors

 import 'dart:async';

import 'package:flutter/material.dart';
import 'package:robodrive/main.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

 class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Scaffold(body: HomePage())));
    });
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(44, 44, 44, 1),
              image: DecorationImage(
              image: AssetImage("images/splashscreen.png"),
            )
          ),
        ),
      ),
    );
  }
}
 