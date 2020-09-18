import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class LocationService{

  Future<Position> getLocation()async{

    Position position = await getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
   return position;
  }

}