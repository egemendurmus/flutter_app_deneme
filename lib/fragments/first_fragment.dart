import 'package:flutter/material.dart';

class FirstFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Column(
        children: <Widget>[
          new Container(
            child: new Card(
              margin: new EdgeInsets.fromLTRB(15.0, 22.0, 15.0, 1.0),
             // color: new Color(0xf1f1f1),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new RaisedButton(onPressed: null),
                  const ListTile(
                    leading: const Icon(Icons.album),
                    title: const Text('The Enchanted Nightingale'),
                    subtitle: const Text(
                        'Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                  new RaisedButton(onPressed: null),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
