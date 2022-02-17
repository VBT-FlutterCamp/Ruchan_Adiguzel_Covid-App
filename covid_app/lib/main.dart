import 'package:covid_app/AppConstants/app_constants.dart';
import 'package:covid_app/Views/on_board_screen.dart';
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
            title: Text(
              AppConstants.appBarTextSplash,
              style: TextStyle(color: AppConstants.labelTextColor),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: OnBoardScreen()),
    );
  }
}
