import 'package:flutter/material.dart';

import '../components/drawer.dart';
import '../constants/strings.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

_buildActionButtons() {
  return <Widget>[
    new IconButton(
      icon: new Icon(Icons.favorite),
      onPressed: () {},
    ),
    
  ];
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(HOME_TITLE), actions: _buildActionButtons()),
      body: new Center(
        child: new Text("Hello World"),
      ),
      drawer: new MyDrawer(),
    );
  }
}
