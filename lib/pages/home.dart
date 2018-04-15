import 'package:flutter/material.dart';

import '../components/drawer.dart';
import '../constants/strings.dart';
import '../data/models.dart';
import '../routes.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
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

_buildHomePage(BuildContext context) {
  return new ListView(
    padding: const EdgeInsets.all(16.0),
    children: <Widget>[_buildHottestApp(context), _buildChallenges(context), _buildQuizzes(context), _buildResults(context)],
  );
}

_buildHottestApp(BuildContext context) {
  return Column(
    children: <Widget>[
      new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Text(
            "Hottest App of the Day",
            style: Theme.of(context).textTheme.body2,
          ),
          new FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.hottestAppPageRoute);
            },
            child: new Text(
              "View All",
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
      new Card(
          child: new ListTile(
        leading: new CircleAvatar(
          child: new Text("S"),
        ),
        trailing: new IconButton(
          icon: new Icon(
            Icons.chevron_right,
            size: 38.0,
          ),
          onPressed: () {},
        ),
        title: new Text("App Name"),
        subtitle: new Text("Student Name\nPosted On 20-04-2017"),
      ))
    ],
  );
}

_buildChallenges(BuildContext context) {
  return Column(
    children: <Widget>[
      new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Text(
            "Challenges",
            style: Theme.of(context).textTheme.body2,
          ),
          new FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.challengesPageRoute);
            },
            child: new Text(
              "View All",
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
      new Card(
          child: new ListTile(
        leading: new CircleAvatar(
          child: new Text("P"),
        ),
        trailing: new IconButton(
          icon: new Icon(
            Icons.chevron_right,
            size: 38.0,
          ),
          onPressed: () {},
        ),
        title: new Text("Challenge Name"),
        subtitle: new Text("Moderator Name\n End Date :20-04-2017"),
      ))
    ],
  );
}

_buildQuizzes(BuildContext context) {
  return Column(
    children: <Widget>[
      new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Text(
            "Quizzes",
            style: Theme.of(context).textTheme.body2,
          ),
          new FlatButton(
           onPressed: () {
              Navigator.pushNamed(context, Routes.quizPageRoute);
            },
            child: new Text(
              "View All",
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
      new Card(
          child: new ListTile(
        leading: new CircleAvatar(
          child: new Text("K"),
        ),
        trailing: new IconButton(
          icon: new Icon(
            Icons.chevron_right,
            size: 38.0,
          ),
          onPressed: () {},
        ),
        title: new Text("Quiz Name"),
        subtitle: new Text("Moderator Name\n End Date :20-04-2017"),
      ))
    ],
  );
}

_buildResults(BuildContext context) {
  return Column(
    children: <Widget>[
      new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Text(
            "Results",
            style: Theme.of(context).textTheme.body2,
          ),
          new FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.resultsPageRoute);
            },
            child: new Text(
              "View All",
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
       new Card(
          child: new ListTile(
        leading: new CircleAvatar(
          child: new Text("B"),
        ),
        trailing: new IconButton(
          icon: new Icon(
            Icons.chevron_right,
            size: 38.0,
          ),
          onPressed: () {},
        ),
        title: new Text("Quiz/Challenge Name"),
        subtitle: new Text("Moderator Name\n Posted on 20-04-2017"),
      ))
    ],
  );
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(HOME_TITLE), actions: _buildActionButtons()),
      body: _buildHomePage(context),
      drawer: new MyDrawer(),
    );
  }
}
