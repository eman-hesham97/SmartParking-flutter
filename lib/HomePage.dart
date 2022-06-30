// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_new, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/ParkCard.dart';
import 'package:myapp/ParkOneInfo.dart';
import 'package:myapp/ParkTwoInfo.dart';
import 'package:myapp/ParkThreeInfo.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // ignore: unnecessary_new
          new Container(
              height: 812,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                ),
              ),
              // ignore: unnecessary_new
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(31),
              )
          ),
          Positioned(
            top: 10,
            // ignore: unnecessary_new
            child: new Container(
                width: 500,
                height: 400,
                child: Column(
                  children: <Widget>[
                    Flexible(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          // ++++++++++++++++++++++++++++++++++++++++ PARK 1 ++++++++++++++++++++++++++++++++++++++++++++
                          Row(children: <Widget>[
                            Container(
                              child: ParkCard('Nasr City', 'Nasr City', true,),
                            ),
                            Container(
                              margin: const EdgeInsets. only(top: 58.0),
                              child: FlatButton( 
                                splashColor: Colors.yellow, 
                                height: 70,
                                minWidth: 155,
                              child: Text('View Details', style: TextStyle(fontSize: 15.0),),  
                              onPressed: () {
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ParkOneInfo()),
                                );
                              },  
                            ),
                            decoration: new BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.deepPurple.shade50,
                                Colors.deepPurple.shade50 ],
                                  stops: [
                                    0,
                                    1
                                  ]
                              )
                          )
                            )
                          ]),
                          // ++++++++++++++++++++++++++++++++++++++++ PARK 2 ++++++++++++++++++++++++++++++++++++++++++++
                          Row(children: <Widget>[
                            Container(
                              margin: const EdgeInsets. only(top: 58.0),
                              child: FlatButton( 
                                splashColor: Colors.yellow, 
                                textColor: Colors.white,
                                height: 70,
                              child: Text('View Details', style: TextStyle(fontSize: 15.0),),  
                              onPressed: () {
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ParkTwoInfo()),
                                );
                              },  
                            ),
                            decoration: new BoxDecoration(
                              // borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(colors: [
                                Colors.deepPurple.shade700,
                                Colors.deepPurple.shade700 ],
                                  stops: [
                                    0,
                                    1
                                  ]
                              )
                          )
                            ),
                          Container(
                              child: ParkCard('Fifth Settlement', 'Fifth Settlement', false,),
                            ), 
                          ]),
                          // ++++++++++++++++++++++++++++++++++++++++ PARK 3 ++++++++++++++++++++++++++++++++++++++++++++
                          Row(children: <Widget>[
                            Container(
                              child: ParkCard('Maadi', 'Maadi', true, ),
                            ),
                            Container(
                              margin: const EdgeInsets. only(top: 58.0),
                              child: FlatButton( 
                                splashColor: Colors.yellow, 
                                height: 70,
                                minWidth: 155,
                              child: Text('View Details', style: TextStyle(fontSize: 15.0),),  
                              onPressed: () {
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ParkThreeInfo()),
                                );
                              },  
                            ),
                            decoration: new BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.deepPurple.shade50,
                                Colors.deepPurple.shade50 ],
                                  stops: [
                                    0,
                                    1
                                  ]
                              )
                          )
                            )
                          ]),
                        ],
                      ),
                    )
                  ],
                ),
                // ignore: unnecessary_new
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                )
            ),
          )
        ],
      ),
    );
  }
}