import "package:flutter/material.dart";

class MySlider extends StatelessWidget {
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
      bottomNavigationBar: new ButtonBar(
        alignment: MainAxisAlignment.start,
        children: <Widget>[
          new Slider(
            value: val,
            onChanged: (double e) => changed(e),
            activeColor: Colors.red,
            inactiveColor: Colors.grey,
            divisions: 10,
            label: "My Slider",
            max: 10.0,
            min: 1.0,
          ),
          new Text(message, style: new TextStyle(
            color: Colors.green
          ),)
        ],
      ),
    );
  }

  void changed(double e) {
    setState(() {
          val = e;
          message = "You are set to: ${e.toStringAsFixed(1)}";
        });
  }
}