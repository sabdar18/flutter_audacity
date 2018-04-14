import 'package:flutter/material.dart';

import '../components/drawer.dart';
import '../constants/strings.dart';


class ChallengePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ChallengePageState();
  }

}


class ChallengePageState extends State<ChallengePage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(CHALLENGES_TITLE),
      ),
      body: new Center(
        child: new Text("Hello World"),
      ),
       drawer: new MyDrawer(),
    );
  }

}