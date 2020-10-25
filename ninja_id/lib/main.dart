import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),

));

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          // This will apply alignment on the cross axis (X Axis)
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/chefturtol.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.greenAccent
            ),
            Text("NAME", style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2),
            ),
            // This adds a box between widgets, good for spacing
            SizedBox(height: 10.0),
            Text("Kevin", style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2,
              fontSize: 28.0,
              fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Text("CURRENT NINJA LEVEL", style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2),
            ),
            SizedBox(height: 10.0),
            Text("8", style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400]
                ),
                SizedBox(width: 10),
                Text(
                  'kevin@hotmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1
                  )
                )
              ]
            )
          ],
        ),
      )
    );
  }
}
