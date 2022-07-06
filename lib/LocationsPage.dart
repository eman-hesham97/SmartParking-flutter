import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/InfoPage.dart';
import 'package:myapp/MQTT/state/MQTTAppState.dart';
import 'package:provider/provider.dart';
class LocationsPage extends StatefulWidget {
  const LocationsPage({ Key? key }) : super(key: key);

  @override
  State<LocationsPage> createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  var allParkMarker = HashSet<Marker>();
  late BitmapDescriptor redMarker;
  late BitmapDescriptor yellowMarker;
  late BitmapDescriptor greenMarker;
  // late BitmapDescriptor getMyMarker;
  late MQTTAppState currentAppState;

  getRedMarker() async {
    redMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/images/redMarker.png');
  }

  getGreenMarker() async {
    greenMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/images/greenMarker.png');
  }

  getYellowMarker() async {
    yellowMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/images/yellowMarker.png');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRedMarker();
    getGreenMarker();
    getYellowMarker();
    // whichIconToShow(currentAppState?.getAvailableSlots);
  }

// whichIconToShow(availableSlots) async {
//   if (availableSlots <= 20 ) {
//     getMyMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/images/redMarker.png');
//   } else if(availableSlots  < 50 && availableSlots >20){
//     getMyMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/images/yellowMarker.png');
//   }else{
//     getMyMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/images/greenMarker.png');
//   }
// }

  @override
  Widget build(BuildContext context) {
    final MQTTAppState appState = Provider.of<MQTTAppState>(context);
    currentAppState = appState;
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(30.05816879935137, 31.330193225734096),
          zoom: 10,
          ),
          onMapCreated: (GoogleMapController googleMapController){
            setState(() async {
              allParkMarker.add(Marker(
                markerId: MarkerId('1'),
                position: LatLng(30.05679628274069, 31.345492890499415),
                infoWindow: InfoWindow(
                  title: 'Nasr City Parking',
                  snippet: 'Available Slots: ' + currentAppState.getAvailableSlots.toString(),
                ),
                icon: await currentAppState.whichIconToShow(), //getMyMarker
                // whichIconToShow(availableSlots)
                ),
                );
            });
            // setState((){
            //   allParkMarker.add(Marker(
            //     markerId: MarkerId('2'),
            //     position: LatLng(30.00443609369848, 31.424836641041264),
            //     infoWindow: InfoWindow(
            //       title: '5th Settlement Parking',
            //       snippet: 'Available Slots: 0',
            //     ),
            //     icon: redMarker,
            //     ),
            //     );
            // });
            // setState(() async {
            //   allParkMarker.add(Marker(
            //     markerId: MarkerId('3'),
            //     position: LatLng(29.96669594079009, 31.254391083367214),
            //     infoWindow: InfoWindow(
            //       title: 'Maadi Parking',
            //       snippet: 'Available Slots: 0',
            //     ),
            //     icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/images/redMarker.png') 
            //     ),
            //     );
            // });
          },
          markers: allParkMarker,
      ),
    );
  }
}