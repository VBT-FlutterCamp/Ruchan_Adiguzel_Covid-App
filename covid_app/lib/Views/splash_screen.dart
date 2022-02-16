import 'package:covid_app/AppConstants/app_constants.dart';
import 'package:covid_app/Views/on_board_view.dart';
import 'package:covid_app/models/on_board_models.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final double borderRadiusValue = 30;

  final BoxDecoration _decoration = BoxDecoration(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      color: Colors.deepOrange[600]);

  var _pageContr = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.background,
      body: PageViewBuilder(),
    );
  }

  PageView PageViewBuilder() {
    return PageView.builder(
      itemCount: models.length,
      onPageChanged: (value) {
        setState(() {
          currentIndex = value;
        });
        currentIndex = value;
      },
      itemBuilder: (context, index) {
        return OnBoardView(model: models[index]);
      },
      controller: _pageContr,
    );
  }
}
