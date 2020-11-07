// This package will allow us to make http requests to an API
import 'package:http/http.dart';

// This convert will convert our JSON into data we can work with
import 'dart:convert';

import 'package:intl/intl.dart';

class WorldTime {
  // Properties
  String location; // Location name
  String time; //time in location
  String flag; // URL to an asset flag icon
  String url; // Location URL for api endpoint

  // Constructor
  WorldTime({ this.location, this.flag, this.url });

  // Future is similiar to Promises in JS
  // Since we have async func, we will need to include this to use await in loading.dart
  Future<void> getTime() async {

    try {

      // Make the request
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      // print(data);

      // Get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      // print(datetime);
      // print(offset);

      // Create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // Set time property
      // This DateFormat.jm is from Intl dart package
      time = DateFormat.jm().format(now);

    } catch (error) {
      print('caught error: $error');
      time = 'Could not get time data';
    }

  }
}


