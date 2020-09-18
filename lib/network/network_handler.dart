import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHandler{
  Future<dynamic> requestCurrentWeatherData(double lat, double lon)async{


  try{

    String APIKEY='292fdabde907a2445dc34ea5a8461f0c';


    http.Response response;

    String url='https://api.openweathermap.org/data/2.5/weather?lat={$lat}&lon={$lon}&appid={$APIKEY}';
    print((url));



    response= await http.get(url);


    if(response.statusCode==200) {
      print(response.body);

      return(json.decode(response.body));
    }


  }
  catch(e){
    print(e.toString());
  }

  }

  }
