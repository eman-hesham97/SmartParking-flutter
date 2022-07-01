import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/HomePage.dart';

class ParkTwoInfo extends StatefulWidget {
  const ParkTwoInfo({ Key? key }) : super(key: key);

  @override
  State<ParkTwoInfo> createState() => _ParkTwoInfoState();
}

class _ParkTwoInfoState extends State<ParkTwoInfo> {
  @override
  Widget build(BuildContext context) {
    Size size =   MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Fifth Settlement Parking'),
      ),
      body: Stack(
        children: [
          GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(30.00443609369848, 31.424836641041264),
          zoom: 14,
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
                  Text("Fifth Settlement", style: TextStyle(
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
                  Text("Seven Stars Mall", style: TextStyle(
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
                  Text("200", style: TextStyle(
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
                  Text("10 EGP per hour", style: TextStyle(
                    fontSize: 16,  
                    fontStyle: FontStyle.italic,
                    color: Colors.black ),)
                ],
              ),
              Row(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Number of Floors: ", style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white ),
                    ),
                  Text("3", style: TextStyle(
                    fontSize: 16,  
                    fontStyle: FontStyle.italic,
                    color: Colors.black ),)
                ],
              ),
              Row(
                children: [
                  Container(
                  margin: const EdgeInsets. only(top: 30.0, left: 80),
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
              ),
            ],
          ),
        ),
      ),
      );
  }
}