// ignore_for_file: unnecessary_new, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/MQTT/state/MQTTAppState.dart';
import 'package:myapp/QrCode.dart';
import 'package:myapp/MQTT/MQTTManager.dart';
import 'package:provider/provider.dart';
import 'dart:io' show Platform;

class InfoPage extends StatefulWidget {
  const InfoPage({ Key? key }) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  late MQTTManager manager;
  late MQTTAppState currentAppState;


  @override
  Widget build(BuildContext context) {
    final MQTTAppState appState = Provider.of<MQTTAppState>(context);
    currentAppState = appState;
    _configureAndConnect();
    return new Scaffold(
      body:
      Stack(
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
                margin: const EdgeInsets. only(left: 30, top:20),
                child: Text("Available Slots: " + currentAppState.getAvailableSlots.toString(), style: TextStyle(
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
                  margin: const EdgeInsets. only(left: 115, top:20),
                  child: FlatButton( 
                    splashColor: Colors.yellow, 
                    hoverColor: Colors.pink.shade100,
                    color: Colors.deepPurple.shade200,
                    height: 50,
                    minWidth: 150,
                  child: Text('Book Now', style: TextStyle(fontSize: 15.0),),  
                  onPressed: () {
                    // availableSlots = availableSlots - 1 ;
                    if(currentAppState.getAvailableSlots <= 0){
                      print("no available slots");
                      showAlertDialog(context); 
                    }else{
                      
                      print(currentAppState.getAvailableSlots);
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const QrCode()),
                      );
                      currentAppState.sendAvailableSlots();
                      _publishMessage(currentAppState.getAvailableSlots.toString());
                    }
                  },  
                ),
                )
            ],
          ),
            ],
          )
        ],
        ),
    );
  }

  void _configureAndConnect() {
    manager = MQTTManager(
        host: "learning.masterofthings.com",
        topic: "iot_intake42/Parking/entrance/1",
        identifier: "",
        state: currentAppState);
    manager.initializeMQTTClient();
    manager.connect();
  }

    void _publishMessage(String text) {
    final String message = text;
    manager.publish(message);
  }

}

void showAlertDialog(BuildContext context) { 
  Widget okButton = FlatButton(  
    child: Text("OK"),  
    onPressed: () {  
      Navigator.of(context).pop();  
      }, 
    );    
  AlertDialog alert = AlertDialog(  
    title: Text("Sorry..."),  
    content: Text("No more available slots in this parking."),  
    actions: [  
      okButton,  
    ],  
  );    
  showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      return alert;  
    },  
  );  
}