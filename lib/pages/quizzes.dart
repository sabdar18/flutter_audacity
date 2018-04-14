import 'package:flutter/material.dart';

import '../components/drawer.dart';
import '../constants/strings.dart';


class QuizPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new QuizPageState();
  }

}


class QuizPageState extends State<QuizPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(QUIZZES_TITLE),
      ),
      body: new Center(
        child: new Text("Hello World"),
      ),
       drawer: new MyDrawer(),
    );
  }

}