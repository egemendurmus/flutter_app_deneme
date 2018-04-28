import 'package:flutter/material.dart';
import 'package:flutter_app_deneme/SampleApp.dart';
import 'hello.dart';
import 'loginpage.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
        backgroundColor: Colors.red,
      ),
      key: _scaffoldKey,
      body: new Center(
        child: new Column(
          children: <Widget>[
            new hello(),
            new RaisedButton(
                child: new Text('Launch new screen'),
                color: Colors.greenAccent,
                onPressed: () {
                  showInSnackBar("egemen");
                }),
            new Container(
              margin: const EdgeInsets.only(bottom: 5.0),
            ),
            new RaisedButton(
                child: new Text('Launch new screen'),
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new SampleApp()));
                }),
            new Container(
              margin: const EdgeInsets.only(bottom: 5.0),
            ),
            new Container(
              child: Row(
                children: <Widget>[
                  new RaisedButton(onPressed: null),
                  new Container(
                    margin: const EdgeInsets.only(left: 1.0),
                  ),
                  new RaisedButton(
                      onPressed: null,
                      child: new Text(
                        "START CHATTING",
                        style: new TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      ))
                ],
              ),
            ),
            new Container(
              margin: new EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 1.0),
            ),
            new Container(
              margin: new EdgeInsets.fromLTRB(2.0, 1.0, 0.0, 1.0),
              height: 40.0,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,

                children: <Widget>[
                  new RaisedButton(
                    child: new Text("Submit",
                        style: new TextStyle(
                          color: Colors.white,
                        )),
                    colorBrightness: Brightness.dark,
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> LoginPage()));
                    },
                    color: Colors.blue,
                  ),
                ],
              ),
            ),




            new ButtonBar(children: <Widget>[
              new FlatButton(
                child: new Text("Button 1"),
                color: Colors.lightBlue,
                onPressed: () => debugPrint("Button 1"),
              ),
              new FlatButton(
                child: new Text("Button 2"),
                color: Colors.lightBlue,
                onPressed: () => debugPrint("Button 2"),
              )
            ]),
          ],
        ),
      ),
    );
  }

  void showInSnackBar(String value) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  }
}
