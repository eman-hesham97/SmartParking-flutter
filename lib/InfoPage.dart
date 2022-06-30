// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/QrCode.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({ Key? key }) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:Stack(
        children: <Widget>[ 
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 230.0,
                    width: 410.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            '../assets/p1.gif'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.rectangle,
                      ),
                    ),
                ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets. only(left: 30, top:20),
                child: Text("Want to book a parking slot in Nasr City?", style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 18, 
                  color: Colors.white, 
                  ),),
              ),
            ]
          ),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets. only(left: 150, top:20),
                  child: FlatButton( 
                    splashColor: Colors.yellow, 
                    color: Colors.deepPurple.shade200,
                    height: 50,
                    minWidth: 100,
                  child: Text('Book', style: TextStyle(fontSize: 15.0),),  
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const QrCode()),
                      );
                  },  
                ),
                )
            ],
          )
            ],
          )
        ])
    );
  }
}