import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linkero/model/router.dart';
import 'package:linkero/view/welcome/welcome.dart';
import 'package:linkero/view_model/bottom_navigation/bottom_nav_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomNavBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: const Welcome(),
      ),
    );
  }
}
