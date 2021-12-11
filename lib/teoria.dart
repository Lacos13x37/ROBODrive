import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:robodrive/controller.dart';

void initFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class TeoriaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('pdd').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) return const Text('Нет записей');

        return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (BuildContext context, index) {
              print('length in db : ${snapshot.data!.docs.length}');
              print('index: $index');
              return ListTile(
                title: Text(
                    snapshot.data!.docs[index].get('glava${Controller.index}')),
                    leading: Image(
                      image: AssetImage('images/pddgl${Controller.index}.png'),
                      ),
              );
            });
      },
    );
  }
}