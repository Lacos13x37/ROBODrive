import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'controller.dart';


class TestVopros extends StatefulWidget {
  const TestVopros({ Key? key }) : super(key: key);

  @override
  _TestVoprosState createState() => _TestVoprosState();
}

class _TestVoprosState extends State<TestVopros> {
  final List<String> test = [
    'Автобус - это',//0
    'Автопоезд - это',//1
    'Пешеход - это',//2
    'Кто из перечисленных не является водителем?',//3
    'Чем должен руководствоваться водитель, если сигналы светофора противоречат требованиям дорожных знаков?',//4
    'Выберите вариант ответа, не подходящего под определение "остановка транспортного средства"',//5
    '',//6
    '',//7
    '',//8
    '',//9
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Container (
        alignment: Alignment.topCenter,
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('testi').snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) return const Text('Нет записей');
            return Container(
                alignment: Alignment.topCenter,
                child: ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                          alignment: Alignment.topCenter,
                          child: ListTile(
                            title: Text(
                                snapshot.data!.docs[index].get('test1')),
                          ),
                      );
                    }),
            );
          },
        ),
      )
    );
  }
}