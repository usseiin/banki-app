import 'package:banki_app/constants/constants.dart';
import 'package:banki_app/features/home/home.dart';
import 'package:flutter/material.dart';

import 'route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'fonts/Lato/lato-thin.ttf',
        primaryColor: BColor.dblue,
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      title: 'Banki-App',
      home: const Home(),
    );
  }
}
