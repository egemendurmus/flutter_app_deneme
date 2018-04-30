import 'fragments/first_fragment.dart';
import 'main.dart';

import 'package:flutter/material.dart';

class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Fragment 1", Icons.rss_feed),
    new DrawerItem("Fragment 2", Icons.local_pizza),
    new DrawerItem("Fragment 3", Icons.info)
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new FirstFragment();
      case 1:
        return new FirstScreen();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
        backgroundColor: Colors.red,
      ),
      drawer: new Drawer(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Container(),
            new UserAccountsDrawerHeader(
              accountName: new Text(
                "John Doe",
                textAlign: TextAlign.center,


              ),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    "https://cdn.designcrowd.com/blog/35-Famous-Circle-Logos/20-35-famous-circle-logos.png"),
              ),
              accountEmail: null,
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
