import 'package:flutter/material.dart';
import 'package:unity_app_flutter/partials/WelcomeScreen.dart';
import 'package:unity_app_flutter/partials/accueil.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unity App',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primaryColor: Colors.red,
        accentColor: Color(0xFFFEF9EB),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}