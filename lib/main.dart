import 'package:flutter/material.dart';
import 'package:flutter_audacity/pages/home.dart';

import 'routes.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Audacity',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
      onGenerateRoute: Routes.getRoutes(),

    );
  }
}
