import 'package:flutter/material.dart';

import '../components/drawer.dart';
import '../constants/strings.dart';
import '../data/models.dart';

class HottestAppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HottestAppPageState();
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

_buildHottestAppPage() {
  return new ListView.builder(
    padding: const EdgeInsets.all(8.0),
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
      return new Card(
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
        title: new Text("App Name " + (index+1).toString()),
        subtitle: new Text("Student Name\nPosted On "+ (20-index).toString()+"-04-2017"),
      ));
    },
  );
}

class HottestAppPageState extends State<HottestAppPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(HOTTEST_APP_TITLE),
        actions: _buildActionButtons(),
      ),
      body: _buildHottestAppPage(),
      drawer: new MyDrawer(),
    );
  }
}
