import 'package:flutter/material.dart';
import 'package:myapp/InfoPage.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatefulWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  State<QrCode> createState() => _QrCodeState();
}

DateTime now = DateTime.now();

class _QrCodeState extends State<QrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Column(children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30.0, left: 110),
                child: FlatButton(
                  color: Colors.deepPurple.shade50,
                  splashColor: Colors.yellow,
                  height: 50,
                  minWidth: 200,
                  hoverColor: Colors.pink.shade100,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go back!'),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                  child: QrImage(
                backgroundColor: Colors.deepPurple.shade700,
                foregroundColor: Colors.white,
                data: "NasrCityParking" +
                    "," +
                    now.hour.toString() +
                    ":" +
                    now.minute.toString() +
                    ":" +
                    now.second.toString(),
                version: QrVersions.auto,
                size: 300.0,
              ))
            ],
          ),
        ])
      ]),
    );
  }
}
