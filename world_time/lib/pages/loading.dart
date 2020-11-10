import 'package:flutter/material.dart';
// This package will allow us to make http requests to an API
import 'package:http/http.dart';
// This convert will convert our JSON into data we can work with
import 'dart:convert';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Edmonton', flag: 'edmonton.png', url: 'America/Edmonton');
    await instance.getTime();
    // Loading screen will end once the time is loaded
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time
    });

  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
    print('initState function ran');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
