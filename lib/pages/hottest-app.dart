
import 'package:flutter/material.dart';

import '../components/drawer.dart';
import '../constants/strings.dart';


class HottestAppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HottestAppPageState();
  }

}


class HottestAppPageState extends State<HottestAppPage>{
  @override
  Widget build(BuildContext context) {
     return new Scaffold(
      appBar: new AppBar(
        title: new Text(HOTTEST_APP_TITLE),
      ),
      body: new Center(
        child: new Text("Hello World"),
      ),
       drawer: new MyDrawer(),
    );
  }

}