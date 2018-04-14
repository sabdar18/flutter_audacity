import 'package:flutter_audacity/helpers/custom-route.dart';
import 'package:flutter_audacity/pages/home.dart';
import 'package:flutter/material.dart';

import 'pages/challenges.dart';
import 'pages/hottest-app.dart';
import 'pages/quizzes.dart';
import 'pages/results.dart';
import 'pages/settings.dart';

class Routes {
  static const String defaultPageRoute = "/";
  static const String homePageRoute = "/home";
  static const String hottestAppPageRoute = "/hottest-app";
  static const String quizPageRoute = "/quizzes";
  static const String challengesPageRoute = "/challenges";
  static const String resultsPageRoute = "/results";
  static const String settingsPageRoute = "/settings";

  static getRoutes() {
    return (RouteSettings settings) {
      switch (settings.name) {
        case Routes.homePageRoute:
          return new MyCustomRoute(
              settings: settings, builder: (_) => new HomePage());
        case Routes.hottestAppPageRoute:
          return new MyCustomRoute(
              settings: settings, builder: (_) => new HottestAppPage());
        case Routes.quizPageRoute:
          return new MyCustomRoute(
              settings: settings, builder: (_) => new QuizPage());
        case Routes.challengesPageRoute:
          return new MyCustomRoute(
              settings: settings, builder: (_) => new ChallengePage());
        case Routes.resultsPageRoute:
          return new MyCustomRoute(
              settings: settings, builder: (_) => new ResultsPage());
        case Routes.settingsPageRoute:
          return new MyCustomRoute(
              settings: settings, builder: (_) => new SettingsPage());

        // return (BuildContext context)=> new FavouritePage();
      }
    };
  }
}

class MyRoute extends Route {
  static Route getRoute() {
    return new MyRoute();
  }
}
