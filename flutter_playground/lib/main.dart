import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

// Quickly create stateless widget type stless + tab
// Having a stateless widget will not allow changes to the state over time, just like in React
// Stateless widgets will help us with hot reloading
// Making changes to a single stateless widget will require Flutter to rebuild only the changes.
class Home extends StatelessWidget {
  // The @override annotation means we want to override the build function from the inheritance (which is StatelessWidget with our own custom function
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Flutter Playground"),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body:
            Row(
              children: <Widget>[
                Expanded(child: Image.asset('assets/oceanbeach.jpg'), flex: 3,),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    color: Colors.cyan,
                    child: Text("1"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    color: Colors.pinkAccent,
                    child: Text("2"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    color: Colors.green,
                    child: Text("3"),
                  ),
                )
              ],

            ),

        // Rows allow us to have multiple widgets
        // Row(
        //   Main Axis = X axis, Cross Axis = Y Axis
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     Text("hello world"),
        //     FlatButton(
        //       onPressed: (){},
        //       color: Colors.green,
        //       child: Text("Click ME")
        //     ),
        //     Container(
        //       color: Colors.cyan,
        //       // EdgeInsets will allow us to set our margins and padding
        //       padding: EdgeInsets.all(30),
        //       child: Text("inside container")
        //     )
        //   ],
        // ),





            // Button Example:
            // We need to have onPressed to listen to the event
               // RaisedButton.icon(
               //   onPressed: () {
               //     print("Clicked.");
               //   },
               //   icon: Icon(Icons.mail),
               //   label: Text("Mail"),
               //   color: Colors.amber,
               //
               // ),




            // Icons Example:
            //Icon(Icons.local_airport, color: Colors.purple)

            // Images Example:
            // We can use NetWorkImage to grab an image straight from a URL
            // A better way is to save the image and use AssetImage
            // Refer to the pubspec.yaml to allow us to use asset images
            // Image.asset("assets/oceanbeach.jpg")

            // Text Example:
            // (Text(
            //   "This is my playground to help me learn Flutter!",
            //   // To style our text, we need a TextStyle widget
            //   style: TextStyle(
            //       // If we want to use a custom font, do the following:
            //       // 1. First download one from google fonts and add it to the project
            //       // 2. Then go to the pubpsec.yaml and follow steps to add font
            //       // 3. Add to the fontFamily property
            //       fontFamily: "Raleway",
            //       color: Colors.white,
            //       fontStyle: FontStyle.italic,
            //       fontSize: 15.0,
            //       fontWeight: FontWeight.bold,
            //       letterSpacing: 1.2),
            // )),


        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("Settings"))
          ],
          selectedItemColor: Colors.amberAccent[400],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text("+"),
          backgroundColor: Colors.amber[400],
        ));
  }
}
