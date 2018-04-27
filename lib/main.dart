import 'package:flutter/material.dart';
import 'package:flutter_app_deneme/SampleApp.dart';
import 'hello.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Navigation Basics',
    home: new FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Screen'),
      ),
      body: new Center(

        child: new Column(
          children: <Widget>[
            new hello(),
            new RaisedButton(
                child: new Text('Launch new screen'),
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(
                          builder: (context) => new SampleApp()));
                })

          ],
        ),

      ),


      /* body: new Center(
        child: new RaisedButton(
          child: new Text('Launch new screen'),
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new SampleApp()),
            );
          },
        ),
      ),*/
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Screen"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text('Go back!'),
        ),
      ),
    );
  }
}