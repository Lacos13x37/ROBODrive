// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:robodrive/info2.dart';
import 'package:robodrive/main.dart';



class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      color: Color.fromRGBO(44, 44, 44, 1),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Image(image: AssetImage('images/info1.png'),
          ),
          GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Scaffold(body: InfoScreen2())));
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 35),
            child: Image(
              image: AssetImage('images/info1_btn.png'),
              width: 340,
            ),
          ),
        ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Scaffold(body: HomePage())));
            },
            child: Container(
              alignment: AlignmentDirectional.topEnd,
              margin: EdgeInsets.fromLTRB(0, 40, 20, 0),
              child: Text(
                "Пропустить",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
          )
      ]),
    );
  }
}


