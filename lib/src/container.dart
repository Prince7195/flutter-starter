import 'package:flutter/material.dart';

class MyContainerApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter',
      home: new Container(
        color: Colors.green,
        alignment: Alignment.topCenter,
        padding: new EdgeInsets.symmetric( horizontal: 100.0, vertical: 250.0 ),
        child: new Text(
        'Welcome to Flutter World!',
        textAlign: TextAlign.center,
        style: new TextStyle(fontSize: 30.0),
        ),
      )
    );
  }
}