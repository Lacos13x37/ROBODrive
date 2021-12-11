// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:robodrive/main.dart';


class InfoScreen3 extends StatefulWidget {
  const InfoScreen3({Key? key}) : super(key: key);

  @override
  _InfoScreen3State createState() => _InfoScreen3State();
}

class _InfoScreen3State extends State<InfoScreen3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      // ignore: prefer_const_constructors
      color: Color.fromRGBO(44, 44, 44, 1),
      child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Image(image: AssetImage('images/info3.png'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Scaffold(body: HomePage())));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 35),
                child: Image(
                  image: AssetImage('images/info3_btn.png'),
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
