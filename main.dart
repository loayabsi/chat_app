import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,

        textTheme: TextTheme(
          headline1: TextStyle( fontSize: 24.0, fontWeight: FontWeight.bold
          ),
          bodyText1: TextStyle(fontSize: 16.0),
        ),
      ),
      home: HomeScreen(),
    );
  }
}