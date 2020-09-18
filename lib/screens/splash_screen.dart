import 'package:app_weatherfinal/network/network_handler.dart';
import 'package:app_weatherfinal/screens/weather_home.dart';
import 'package:app_weatherfinal/services/location_service.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class SplashScreen extends StatefulWidget {

  static final String id='SPLASH_SCREEN';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    getWeatherData();

    super.initState();
  }

  void getWeatherData() async {
    LocationService locationService = LocationService();
    Position position = await locationService.getLocation();


  NetworkHandler networkHandler=NetworkHandler();

 var result = await networkHandler.requestCurrentWeatherData(position.latitude,position.longitude);
print(position.latitude);
print(position.longitude);


 var iconData = result['weather'][0]['icon'];

 print(result);

   Navigator.pushNamed(context, HomeScreen.id,arguments: position);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Loading...'),
      ),
    );
  }
}
