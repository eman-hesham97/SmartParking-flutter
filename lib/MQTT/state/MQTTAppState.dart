import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MQTTAppState with ChangeNotifier{
  int _availableSlots = 0;
  late BitmapDescriptor getMyMarker;

  void setReceivedText(String text) {
    _availableSlots = int.parse(text);
    notifyListeners();
  }

  int get getAvailableSlots => _availableSlots;
  void sendAvailableSlots(){
    _availableSlots = _availableSlots - 1;
    notifyListeners();
  }

  Future<BitmapDescriptor> whichIconToShow() async {
    if (_availableSlots <= 20 ) {
        getMyMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/images/redMarker.png');
      } else if(_availableSlots  < 50 && _availableSlots >20){
        getMyMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/images/yellowMarker.png');
      }else{
        getMyMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/images/greenMarker.png');
      };
      notifyListeners();
      return getMyMarker;
      }

}