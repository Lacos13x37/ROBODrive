import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:robodrive/led.dart';
import 'package:robodrive/main.dart';

import 'connection.dart';


class BluetoothConnection extends StatelessWidget {
  const BluetoothConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FlutterBluetoothSerial.instance.requestEnable(),
      builder: (context, future) {
        if (future.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Container(
              height: double.infinity,
              child: Center(
                child: Icon(
                  Icons.bluetooth_disabled,
                  size: 200.0,
                  color: Colors.black12
                  ,
                ),
              ),
            ),
          );
        } else {
          return BluetoothHome();
        }
      },
    );
  }
}

  class BluetoothHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
      centerTitle: true,
      title: Text('Connection'),
      ),
      body: SelectBondedDevicePage(
      onCahtPage: (device1) {
      BluetoothDevice device = device1;
      Navigator.push(
      context,
    MaterialPageRoute(
    builder: (context) {
  return ChatPage(server: device);
  },
  ),
  );
  },
  ),
  ));
  }
  }

