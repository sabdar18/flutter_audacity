import 'package:flutter/material.dart';

import '../components/drawer.dart';
import '../constants/strings.dart';


class ResultsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ResultsPageState();
  }

}


class ResultsPageState extends State<ResultsPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(RESULTS_TITLE),
      ),
      body: new Center(
        child: new Text("Hello World"),
      ),
       drawer: new MyDrawer(),
    );
  }

}