import 'package:flutter/material.dart';

import '../components/drawer.dart';
import '../constants/strings.dart';


class SettingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SettingsPageState();
  }

}


class SettingsPageState extends State<SettingsPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(SETTINGS_TITLE),
      ),
      body: new Center(
        child: new Text("Hello World"),
      ),
       drawer: new MyDrawer(),
    );
  }

}