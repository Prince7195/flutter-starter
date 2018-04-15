import 'package:flutter/material.dart';

class MyStateFulApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Flutter',
      home: new Scaffold(
        bottomNavigationBar: new MyStateApp(),
      )
    );
  }
}

class MyStateApp extends StatefulWidget {
  StateOfTheUnion title;
  MyStateApp({ Key key, this.title }): super(key: key);

  @override
  StateOfTheUnion createState() => new StateOfTheUnion();
}

class StateOfTheUnion extends State<MyStateApp> {
  String wordsOnBottom = 'bottom text';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new Text(wordsOnBottom),
      floatingActionButton: new RaisedButton(
        onPressed: onPressMe,
        color: Colors.blue[700],
        child: new Text('Press Me', style: new TextStyle(
            color: Colors.white
          )),
      ),
    );
  }

  onPressMe() {
    setState(() {
      if(wordsOnBottom == 'bottom text' || wordsOnBottom == 'old bottom text') {
        wordsOnBottom = 'updated bottom text';
      }else {
        wordsOnBottom = 'old bottom text';
      }
    });
  }

}