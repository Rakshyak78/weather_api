
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatefulWidget {

  static final String id='HOME_SCREEN';

   final Position position;
   HomeScreen(this.position );

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

void initState() {
    getUserLocation();
    super.initState();
  }


  void getUserLocation()async{
    print(widget.position.latitude);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://image.freepik.com/free-vector/weather-pattern_1061-487.jpg')
              )

            ),

          ),

          Container(
            height:MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0)
              ),
            color: Colors.blue,

              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0,2),
                  blurRadius: 30,
                ),

              ],

              )
            ),
          

        ],

      ),

    );
  }
}
