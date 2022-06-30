import 'package:flutter/material.dart';
import 'package:myapp/HomePage.dart';

class ParkOneInfo extends StatefulWidget {
  const ParkOneInfo({ Key? key }) : super(key: key);

  @override
  State<ParkOneInfo> createState() => _ParkOneInfoState();
}

class _ParkOneInfoState extends State<ParkOneInfo> {
  @override
  Widget build(BuildContext context) {
    Size size =   MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Nasr City Parking'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              alignment: Alignment.topCenter,
              height: size.height - 300,
              width: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  fit: BoxFit.cover,
                  image: AssetImage('../assets/pp.webp'))
              ),
          ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: size.height / 3,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(34),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  height: 5,
                  width: 32 * 1.5,
                  decoration: BoxDecoration(
                    // gradiant color
                    gradient: LinearGradient(colors: [
                        Colors.deepPurple.shade200,
                        Colors.deepPurple.shade200 ],
                  ),
                  borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
              Row(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Location: ", style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white ),
                    ),
                  Text("Nasr City", style: TextStyle(
                    fontSize: 16,  
                    fontStyle: FontStyle.italic,
                    color: Colors.black ),)
                ],
              ),
              Row(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Address: ", style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white ),
                    ),
                  Text("18 Makram Ebied St.", style: TextStyle(
                    fontSize: 16,  
                    fontStyle: FontStyle.italic,
                    color: Colors.black ),)
                ],
              ),
              Row(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Total Slots: ", style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white ),
                    ),
                  Text("100", style: TextStyle(
                    fontSize: 16,  
                    fontStyle: FontStyle.italic,
                    color: Colors.black ),)
                ],
              ),
              Row(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Fees: ", style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white ),
                    ),
                  Text("5 EGP per hour", style: TextStyle(
                    fontSize: 16,  
                    fontStyle: FontStyle.italic,
                    color: Colors.black ),)
                ],
              ),
              Row(
                children: [
                  Container(
                  margin: const EdgeInsets. only(top: 30.0, left: 110),
                  child: FlatButton(
                      color: Colors.deepPurple.shade200,
                      splashColor: Colors.yellow, 
                      height: 50,
                      minWidth: 200,
                      hoverColor: Colors.pink.shade100,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go back!'),
                    ),
                )],
              )
            ],
          ),
        ),
      ),
      );
  }
}