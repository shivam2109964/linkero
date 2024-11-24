import 'package:flutter/material.dart';
import 'package:linkero/view/home/home.dart';
import 'package:linkero/view/welcome/welcome.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Home.routeName:
      return MaterialPageRoute(
        builder: (_) => const Home(),
      );
    case Welcome.routeName:
      return MaterialPageRoute(
        builder: (_) => const Welcome(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Screen does not exist"),
          ),
        ),
      );
  }
}
