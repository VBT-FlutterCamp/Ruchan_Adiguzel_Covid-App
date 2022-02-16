import 'package:covid_app/AppConstants/app_constants.dart';
import 'package:covid_app/Views/view_first.dart';
import 'package:covid_app/Views/view_second.dart';
import 'package:covid_app/Views/view_third.dart';
import 'package:covid_app/widgets/label_text_widget.dart';
import 'package:covid_app/widgets/label_under_content_widget.dart';
import 'package:covid_app/widgets/wide_elevated_btn.dart';
import 'package:covid_app/widgets/wide_text_button.dart';
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

  var listOfViews = [ViewFirst(), ViewSecond(), ViewThird()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.background,
      body: PageViewBuilder(),
    );
  }

  PageView PageViewBuilder() {
    return PageView.builder(
      itemCount: listOfViews.length,
      onPageChanged: (value) {
        setState(() {
          currentIndex = value;
        });
        currentIndex = value;
      },
      itemBuilder: (context, index) {
        return listOfViews[index];
      },
      controller: _pageContr,
    );
  }
}
