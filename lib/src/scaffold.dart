import 'package:flutter/material.dart';

class MyScaffoldApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter',
      home: new Scaffold(
        floatingActionButton: new RaisedButton(
          onPressed: onPress,
          color: Colors.blue[700],
          child: new Text('Press', style: new TextStyle(
            color: Colors.white
          ),),
        ),
        appBar: new AppBar(
          title: new Text('Welcome to Hell'),
          backgroundColor: Colors.red,
        ),
        bottomNavigationBar: new Text('bottom'),
        drawer: new ListView(
          padding: new EdgeInsets.symmetric(vertical: 100.0, horizontal: 10.0),
          children: <Widget>[
            new Text('One', style: new TextStyle( color: Colors.lightGreenAccent[400], fontWeight: FontWeight.bold ),),
            new Text('Two', style: new TextStyle( color: Colors.lightGreenAccent[400], fontWeight: FontWeight.bold ),),
            new Text('Three', style: new TextStyle( color: Colors.lightGreenAccent[400], fontWeight: FontWeight.bold ),)
          ],
        ),
        body: new Text('Body Container'),
        persistentFooterButtons: <Widget>[
          new Text('footer 1'),
          new Text('footer 2')
        ],
      ),
    );
  }

  onPress() => print('Welcome to Hell buddy!');

}