import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/ParkCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  // Widget build(BuildContext context) {
  //   return new Scaffold(
  //     body: new Center(
  //       child: new Text("This is all parkings info page"),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body: Stack(
        children: <Widget>[
          // ignore: unnecessary_new
          new Container(
              // width: 375,
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
                                splashColor: Colors.green, 
                                height: 70,
                                minWidth: 155,
                              child: Text('View Details', style: TextStyle(fontSize: 15.0),),  
                              onPressed: () {},  
                            ),
                            decoration: new BoxDecoration(
                              // borderRadius: BorderRadius.circular(8),
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
                          // ParkCard('Parking 1', 'Nasr City', true,),
                          // ++++++++++++++++++++++++++++++++++++++++ PARK 2 ++++++++++++++++++++++++++++++++++++++++++++
                          Row(children: <Widget>[
                            Container(
                              margin: const EdgeInsets. only(top: 58.0),
                              child: FlatButton( 
                                splashColor: Colors.green, 
                                textColor: Colors.white,
                                height: 70,
                              child: Text('View Details', style: TextStyle(fontSize: 15.0),),  
                              onPressed: () {},  
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
                          // ParkCard('Parking 2', 'Fifth Settlement', false,),
                          // ++++++++++++++++++++++++++++++++++++++++ PARK 3 ++++++++++++++++++++++++++++++++++++++++++++
                          Row(children: <Widget>[
                            Container(
                              child: ParkCard('Maadi', 'Maadi', true, ),
                            ),
                            Container(
                              margin: const EdgeInsets. only(top: 58.0),
                              child: FlatButton( 
                                splashColor: Colors.green, 
                                height: 70,
                                minWidth: 155,
                              child: Text('View Details', style: TextStyle(fontSize: 15.0),),  
                              onPressed: () {},  
                            ),
                            decoration: new BoxDecoration(
                              // borderRadius: BorderRadius.circular(8),
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

                          // ParkCard('Parking 3', 'Maadi', true, ),
                          // ParkCard('Maruti Swift', 'Rs.4.99 - 8.85 Lakh*', 'assets/carlist4.png', 'assets/background_left.png', false,)
                        ],
                      ),
                    )
                  ],
                ),
                // ignore: unnecessary_new
                decoration: new BoxDecoration(
                    // color: Color(0xffeff5ff),
                    borderRadius: BorderRadius.circular(32),
                )
            ),
          )

        ],
      ),
    );
  }
}