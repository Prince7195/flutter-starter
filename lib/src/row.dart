import 'package:flutter/material.dart';

class MyRowApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter',
      home: new Row(
        children: <Widget>[
          const FlutterLogo(),
          new Text('One'),
          new Text('Two'),
          const Expanded(
            child: const Text('Three', textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }
}