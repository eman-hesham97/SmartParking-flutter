import 'package:flutter/material.dart';
import 'package:myapp/InfoPage.dart';

class QrCode extends StatefulWidget {
  const QrCode({ Key? key }) : super(key: key);

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
        children: <Widget>[
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets. only(top: 30.0, left: 110),
                    child: FlatButton(
                      color: Colors.deepPurple.shade50,
                      splashColor: Colors.yellow, 
                      height: 50,
                      minWidth: 200,
                      hoverColor: Colors.yellow,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go back!'),
                    ),
                  )
                ],
                ),


                // Row(),
                
                //add any desired code here inside a new Row()




              ]
            )
          ]
        ), 
    );
  }
}