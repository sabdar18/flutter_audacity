import 'package:flutter/material.dart';

import '../data/models.dart';
import '../constants/strings.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => new _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  List<MenuItem> menuItems = new List<MenuItem>();
  @override
  void initState() {
    super.initState();
    _addItems();
  }

  updateMenuItems(MenuItem menuItem) {
    menuItems.forEach((item) {
      if (item.title == menuItem.title) {
        setState(() {
          item.selected = true;
        });
      } else {
        setState(() {
          item.selected = false;
        });
      }
    });
  }

  _addItems() {
    menuItems.addAll(MenuData.getMenuList());
  }

  _buildMenuItem(BuildContext context, MenuItem menuItem) {
    return new Column(
      children: <Widget>[
        new ListTile(
          selected: menuItem.selected ?? false,
          // leading: menuItem.icon,

          title: new Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: new Text(menuItem.title,),
          ),
          onTap: (() {
            updateMenuItems(menuItem);
            Navigator.pop(context);
            Navigator.pushNamed(context, menuItem.route);
          }),
        ),
        new Divider(
          height: 0.0,
        )
      ],
    );
  }

  _buildHeader(BuildContext context) {
    return new DrawerHeader(
      margin: const EdgeInsets.all(0.0),
      padding: const EdgeInsets.all(0.0),
      decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
      child: new Container(
        child: new Center(
          child: new Text(
            APP_NAME.toUpperCase(),
            style:
                Theme.of(context).textTheme.title.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }

  _buildHeader1(BuildContext context){
    return new UserAccountsDrawerHeader(
      accountEmail: new Text("useremail@gmail.com"),
      accountName: new Text("User Name"),
      currentAccountPicture: new CircleAvatar(
        child: new Icon(Icons.person, size: 50.0,),
        radius: 10.0,
      )
    );
  }

  _buildMenuItems() {
    return new Expanded(
        child: new ListView.builder(
      padding: const EdgeInsets.only(top: 0.0, left: 0.0),
      itemCount: menuItems.length,
      itemBuilder: (BuildContext context, int index) {
        final MenuItem menuItem = menuItems[index];
        return _buildMenuItem(context, menuItem);
      },
    ));
  }

  Widget build(BuildContext context) {
    return new Drawer(
      child: new Column(
          children: <Widget>[_buildHeader1(context), _buildMenuItems()]),
    );
  }
}
