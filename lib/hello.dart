import 'package:flutter/material.dart';


class hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: new EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 10.0),
        child: new Row(
            children: <Widget>[
              new Text("deneme",  style: new TextStyle(fontWeight: FontWeight.w800),
              ),
              new RaisedButton(onPressed: null),
              new CloseButton()
            ])

    );

        }

}
