import "package:flutter/material.dart";

class MyIconTheme extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new IconTheme(
        data: new IconThemeData(
          color: Colors.red,
          opacity: 1.3,
          size: 3.0
        ),
        child: new IconButton(
        icon: new Icon(Icons.android),
        onPressed: somthing,
      ),
      )
    );
  }
  void somthing() => print("Something happened");
}