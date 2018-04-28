import 'package:flutter/material.dart';

class MySwitchBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter',
      home: new MyStateful(),
    );
  }
}

class MyStateful extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class MyState extends State<MyStateful> {
 bool val = true;
 String message = "This is true";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new ButtonBar(
        children: <Widget>[
          new Switch(
            value: val,
            onChanged: (bool e) => something(e),
            activeColor: Colors.red,
          ),
          new Text(message, style: new TextStyle(
            color: Colors.green
          ),)
        ],
      ),
    );
  }

  void something(bool e) {
    setState(() {
          if(e) {
            message = "This is true";
            val = true;
          } else {            
            message = "This is False";
            val = false;
          }
        });
  }
}