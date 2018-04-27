import 'package:flutter/material.dart';


class hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Column(
            children: <Widget>[
              new Text("deneme",  style: new TextStyle(fontWeight: FontWeight.w800),
              ),
              new RaisedButton(onPressed: null),
              new CloseButton()
            ])

    );

        }

}
