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
          children: <Widget>[
            Text("NAME", style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2

            ),),
          ],
        ),
      )
    );
  }
}
