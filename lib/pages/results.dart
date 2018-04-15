import 'package:flutter/material.dart';

import '../components/drawer.dart';
import '../constants/strings.dart';
import '../data/models.dart';

class ResultsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ResultsPageState();
  }
}

void _popupSelection(MenuItem1 item) {
  print(item.title);
}

_buildActionButtons() {
  return <Widget>[
    // new IconButton(
    //   icon: new Icon(Icons.favorite),
    //   onPressed: () {},
    // ),
    new PopupMenuButton<MenuItem1>(
      icon: new Icon(Icons.more_vert),
      onSelected: _popupSelection,
      itemBuilder: (BuildContext context) {
        return MenuData1.getMenuList().map((MenuItem1 item) {
          return new PopupMenuItem<MenuItem1>(
              value: item, child: new Text(item.title));
        }).toList();
      },
    )
  ];
}

_buildResultsPage(BuildContext context) {
  return new ListView.builder(
    padding: const EdgeInsets.all(8.0),
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
      return new Card(
          child: new ListTile(
        leading: new CircleAvatar(
          child: new Text("A"),
        ),
        trailing: new IconButton(
          icon: new Icon(
            Icons.chevron_right,
            size: 38.0,
          ),
          onPressed: () {},
        ),
        title: new Text("Quiz/Challenge Name " + (index + 1).toString()),
        subtitle: new Text(
            "Moderator Name\nPosted On " + (20 - index).toString() + "-04-2017"),
      ));
    },
  );
}

class ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(RESULTS_TITLE),
        actions: _buildActionButtons(),
      ),
      body:_buildResultsPage(context),
      drawer: new MyDrawer(),
    );
  }
}
