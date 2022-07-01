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
                    height: 250.0,
                    width: 383.0,
                      child:  Image.network('https://images.unsplash.com/photo-1590674899484-d5640e854abe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGFya2luZ3xlbnwwfHwwfHw%3D&w=1000&q=80'),
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
                    hoverColor: Colors.pink.shade100,
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