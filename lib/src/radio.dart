import 'package:flutter/material.dart';

class MyRadioBtn extends StatelessWidget {
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
  int groupValue;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new ButtonBar(
        children: <Widget>[
          new Radio(
            onChanged: (int e) => somthing(e),
            activeColor: Colors.red,
            value: 1,
            groupValue: groupValue,
          ),
          new Radio(
            onChanged: (e) => somthing(e),
            activeColor: Colors.blue,
            value: 2,
            groupValue: groupValue, // if groupvalue matches value then sets to active
          ),
          new Radio(
            onChanged: (e) => somthing(e),
            activeColor: Colors.black,
            value: 3,
            groupValue: groupValue,
          ),
          new Radio(
            onChanged: (e) => somthing(e),
            activeColor: Colors.green,
            value: 4,
            groupValue: groupValue,
          ),
          new Radio(
            value: null
          )
        ],
      ),
    );
  }

  void somthing(int e) {
    setState(() {
          switch (e) {
            case 1:
              groupValue = 1;
              break;
              case 2:
              groupValue = 2;
              break;
              case 3:
              groupValue = 3;
              break;
              case 4:
              groupValue = 4;
              break;
            default:
            groupValue = null;
              break;
          }
        });
  }
}