import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blue[200],
            appBar: AppBar(
              title: Text("Flutter Playgrounds"),
              centerTitle: true,
              backgroundColor: Colors.greenAccent,
            ),
            // Having "Center" will center everything in the body
            body: Center(
              child: (Text(
                "This is my playground to help me learn flutter!",
                // To style our text, we need a TextStyle widget
                style: TextStyle(
                  // If we want to use a custom font, do the following:
                  // 1. First download one from google fonts and add it to the project
                  // 2. Then go to the pubpsec.yaml and follow steps to add font
                  // 3. Add to the fontFamily property
                    fontFamily: "Raleway",
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2),
              )),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Text("+"),
              backgroundColor: Colors.amber[400],
            )),
      ),
    );
