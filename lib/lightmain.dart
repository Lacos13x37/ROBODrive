// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:robodrive/bluetoothconnection.dart';
import 'package:robodrive/controller.dart';
import 'package:robodrive/game.dart';
import 'package:robodrive/info1.dart';
import 'package:robodrive/main.dart';
import 'package:robodrive/splash.dart';
import 'package:robodrive/teoria.dart';
import 'package:robodrive/test.dart';







class LightMainPage extends StatefulWidget {
  const LightMainPage({ Key? key }) : super(key: key);

  @override
  _LightMainPageState createState() => _LightMainPageState();
}

class _LightMainPageState extends State<LightMainPage> {
  @override
  Widget _buildName(
      {String? imageAsset,
      String? name,
      String? next,
      @required String? glava}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 12),
          Container(height: 2, color: Color.fromRGBO(179, 103, 181, 1)),
          SizedBox(height: 12),
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(imageAsset!),
                radius: 30,
              ),
              SizedBox(width: 12),
              Text(name!),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text(
                  "${next}",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(107, 76, 217, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      color: Color.fromRGBO(44, 44, 44, 1),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Image(
            image: AssetImage('images/lightbackground_menu.png'),
            fit: BoxFit.fitHeight,
            alignment: AlignmentDirectional.center,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          elevation: 16,
                          child:
                              // edited my max
                              Column(
                            children: [
                              const SizedBox(height: 20),
                              const Center(
                                child: Text(
                                  "Выберите главу",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromRGBO(107, 76, 217, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Flexible(
                                
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 10, // твоя длинна
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            Controller.index = index + 1;
                                            print('index: ${Controller.index}');
                                          });
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Scaffold(
                                                          body: TeoriaPage())));
                                        },
                                        child: _buildName(
                                            imageAsset:
                                                'images/pddgl${index + 1}.png',
                                            name: "Глава ${index + 1}",
                                            next: "Далее",
                                            glava: "glava$index"),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Image(
                    alignment: AlignmentDirectional.bottomCenter,
                    image: AssetImage('images/lightteoria.png'),
                    width: 100,
                  ),
                ),

                // test
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Scaffold(body: TestPage())));
                  },
                  child: Image(
                    image: AssetImage('images/lighttest.png'),
                    width: 100,
                  ),
                ),
                // info
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Scaffold(body: InfoScreen())));
                  },
                  child: Image(
                    image: AssetImage('images/lightinfo.png'),
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: AlignmentDirectional.center,
            child: (GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Scaffold(body: GamePage())));
              },
              child: Image(
                image: AssetImage('images/lightmain_btn.png'),
                width: 250,
                height: 250,
              ),
            )),
          ),
          Container(
            alignment: AlignmentDirectional.topEnd,
            margin: EdgeInsets.fromLTRB(0, 15, 15, 0),
            child: (GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Scaffold(body: HomePage())));
              },
              child: Image(
                image: AssetImage('images/lightstylemode.png'),
                width: 40,
                height: 40,
              ),
            )),
          ),
        ],
      ),
    );
  }
}