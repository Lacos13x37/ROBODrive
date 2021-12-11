import 'package:flutter/material.dart';


class TestOtvet extends StatefulWidget {
  const TestOtvet({ Key? key }) : super(key: key);

  @override
  _testOtvetState createState() => _testOtvetState();
}

class _testOtvetState extends State<TestOtvet> {

final List<String> testotveti = [
    'автомобиль с числом мест для сидения более девяти, включая место водителя;',//0  +
    'автомобиль с числом мест для сидения равное девяти, включая место водителя;',//0
    'автомобиль с числом мест для сидения более восьми, включая место водителя;',//0
    
    'трамвай и поезд;',//1
    'состав транспортных средств, состоящий из автомобиля (колесного трактора) и буксируемого им прицепа, прицепа-роспуска, полуприцепа;',//1 ++
    'автобус, а также маршрутно-транспортные автомобили',//1

    '',//2
    '',//2
    '',//2

    '',//3
    '',//3
    '',//3

    '',//4
    '',//4
    '',//4

    'преднамеренное прекращение движения транспортного средства на время до 5 минут, для отдыха водителя',//5
    'преднамеренное прекращение движения транспортного средства на время более 5 минут, для осмотра машины',//5  +
    'преднамеренное прекращение движения транспортного средства на время более 5 минут, для посадки/высадки пассажиров',//5

    '',//6
    '',//6
    '',//6

    '',//7
    '',//7
    '',//7
    
    '',//8
    '',//8
    '',//8

    '',//9
    '',//9
    '',//9
    
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(44, 44, 44, 1),
     child: GestureDetector(
          onTap: () {

          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  showDialog(context: context, builder: (context) {
                    return Dialog(
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                          elevation: 3,
                          child: Container(
                            height: 70,
                            alignment: AlignmentDirectional.center,
                            padding: EdgeInsets.all(15),
                            child: GestureDetector(
                              onTap: () {

                              },
                              child: Text(
                                'Ответ верный!',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ),
                    );
                    
                  });
                },
                child: Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(80)),
                  color: Colors.blueAccent,
                ),
                
                child: Text(
                  '${testotveti[0]}',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white
              ),
                ),
              ),
              ),
            GestureDetector(
              onTap: () {
                  showDialog(context: context, builder: (context) {
                    return Dialog(
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                          elevation: 3,
                          child: Container(
                            height: 70,
                            alignment: AlignmentDirectional.center,
                            padding: EdgeInsets.all(15),
                            child: GestureDetector(
                              onTap: () {

                              },
                              child: Text(
                                'Ответ не верный!',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ),
                    );
                    
                  });
                },
              child: Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(80)),
                  color: Colors.blueAccent,
                ),

                child: Text(
                  '${testotveti[1]}',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white
              ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                  showDialog(context: context, builder: (context) {
                    return Dialog(
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                          elevation: 3,
                          child: Container(
                            height: 70,
                            alignment: AlignmentDirectional.center,
                            padding: EdgeInsets.all(15),
                            child: GestureDetector(
                              onTap: () {

                              },
                              child: Text(
                                'Ответ не верный!',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ),
                    );
                    
                  });
                },
              child: Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(80)),
                  color: Colors.blueAccent,
                ),

                child: Text(
                  '${testotveti[2]}',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white
              ),
                ),
              ),
            )
            ],
          )
        )
    );
  }
}