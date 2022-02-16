import 'package:covid_app/Views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Covid-19 App'),
            elevation: 0,
          ),
          body: SplashScreen()),
    );
  }
}
