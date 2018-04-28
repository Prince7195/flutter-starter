import "package:flutter/material.dart";

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter",
      home: new MyStateFul(),
    );
  }
}

class MyStateFul extends StatefulWidget {

  @override
  MyState createState() => MyState();
}

class MyState extends State<MyStateFul> {
  String message = "Slider Scale";
  double val = 2.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new IconButton(
        icon: new Icon(Icons.android),
        onPressed: somthing,
      ),
    );
  }
  void somthing() => print("Something happened");
}