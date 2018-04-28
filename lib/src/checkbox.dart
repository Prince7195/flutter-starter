import 'package:flutter/material.dart';

class MyCheckbox extends StatelessWidget {
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
 bool checkboxstate = false;
 String message = "This is true";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new ButtonBar(
        children: <Widget>[
          new Checkbox(
            value: checkboxstate,
            onChanged: (bool e) => something(),
            activeColor: Colors.red,
          ),
          new Text(message, style: new TextStyle(
            color: Colors.green
          ),)
        ],
      ),
    );
  }

  void something() {
    setState(() {
          if(checkboxstate) {
            message = "This is False";
            checkboxstate = !checkboxstate;
          } else {            
            message = "This is True";
            checkboxstate = !checkboxstate;
          }
        });
  }
}