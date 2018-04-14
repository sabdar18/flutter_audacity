import 'package:flutter/material.dart';
import '../routes.dart';



class MenuItem{
  MenuItem(this.title, this.icon, this.route,this.selected, this.enabled);
  final String title;
  final Icon icon;
  final String route;
  bool selected  ;
   bool enabled;
}


class MenuData {

  static List<MenuItem> menuItems = new List<MenuItem>();

  static _initMenu(){
   menuItems.add(new MenuItem("Home", new Icon(Icons.home), Routes.homePageRoute,true,true));
   menuItems.add(new MenuItem("Hottest App of the Day", new Icon(Icons.favorite), Routes.hottestAppPageRoute,false,true));
   menuItems.add(new MenuItem("Challenges", new Icon(Icons.new_releases), Routes.challengesPageRoute,false,true));
   menuItems.add(new MenuItem("Quizzes", new Icon(Icons.calendar_today),Routes.quizPageRoute,false,true));
   menuItems.add(new MenuItem("Results", new Icon(Icons.dashboard),Routes.resultsPageRoute,false,true));
  }
  static List<MenuItem> getMenuList(){
    if(menuItems.length ==0) _initMenu();
    return menuItems;
  }

}

