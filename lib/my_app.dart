import 'package:flutter/material.dart';
import 'package:linkero/model/router.dart';
import 'package:linkero/view/welcome/welcome.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const Welcome(),
    );
  }
}
