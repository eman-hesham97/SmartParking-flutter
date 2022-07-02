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
      appBar: AppBar(
        title: const Text('Nasr City Parking'),
      ),
      body: Stack(
        children: <Widget>[
        Column(children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30.0, left: 110),
                child: RichText(
                  // overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Please Note... \n", style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 25, 
                      color: Colors.red.shade700),
                  )
                  ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: RichText(
                  // overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Take a screenshot of the \n following QR code and show it \nat the parking entrance.", style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 22,),
                  )
                  ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 70, top: 30),
                child: RichText(
                  // overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "If you lose this QR code, \n you will lose your reservation.", style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18,
                      color: Colors.black),
                  )
                  ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30.0, left: 40),
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
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30.0, left: 90),
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
        ])
      ]),
    );
  }
}
