import 'package:flutter/material.dart';

class MyColumnApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter',
      home: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const FlutterLogo(),
          new Text('One'),
          new Flexible(child: const Text('Two'),),
          const Expanded(
            child: const Text('Three', textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }
}