import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/HomePage.dart';

class ParkOneInfo extends StatefulWidget {
  const ParkOneInfo({ Key? key }) : super(key: key);

  @override
  State<ParkOneInfo> createState() => _ParkOneInfoState();
}

class _ParkOneInfoState extends State<ParkOneInfo> {
  var marker1 = HashSet<Marker>();
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
          GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(30.05679628274069, 31.345492890499415),
          zoom: 14,
          ),
          onMapCreated: (GoogleMapController googleMapController){
            setState(() {
              marker1.add(Marker(
                markerId: MarkerId('1'),
                position: LatLng(30.05679628274069, 31.345492890499415),
                infoWindow: InfoWindow(
                  title: 'Nasr City Parking',
                  snippet: 'Makram Ebeid St.',
                ),
                ),
                );
            });
          },
          markers: marker1,
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
                  Text("Makram Ebied St.", style: TextStyle(
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
              // Row(
              //   // mainAxisSize: MainAxisSize.max,
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: const [
              //     Text("Number of Floors: ", style: TextStyle(
              //       fontSize: 20, 
              //       fontWeight: FontWeight.bold, 
              //       color: Colors.white ),
              //       ),
              //     Text("2", style: TextStyle(
              //       fontSize: 16,  
              //       fontStyle: FontStyle.italic,
              //       color: Colors.black ),)
              //   ],
              // ),
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