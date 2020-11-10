import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Declare variables to store data from other state
  Map data = {};

  @override
  Widget build(BuildContext context) {
    // This grabs the arguments from the other page
    data = ModalRoute.of(context).settings.arguments;
    print(data);

    // Set Background
    String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
    Color bgColor = data['isDayTime'] ? Colors.blue : Colors.indigo[700];

    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                // Will fit the entire container
                fit: BoxFit.cover),
          ),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: Column(
                children: <Widget>[
                  FlatButton.icon(
                    onPressed: () {
                      // Redirect
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location, color: Colors.grey[300]),
                    label: Text(
                      "Edit Location",
                      style: TextStyle(color: Colors.grey[300]),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          data['location'],
                          style: TextStyle(
                            fontSize: 28,
                            letterSpacing: 2,
                            color: Colors.white,
                          ),
                        )
                      ]),
                  SizedBox(height: 20.0),
                  Text(data['time'],
                      style: TextStyle(fontSize: 66, color: Colors.white))
                ],
              )),
        )));
  }
}
