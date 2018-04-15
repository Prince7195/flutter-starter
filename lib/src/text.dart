import 'package:flutter/material.dart';

class MyTextApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter',
      home: new Text(
        'Welcome to Flutter World!',
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        ),
    );
  }
}