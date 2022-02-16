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

  void IncrementIndex() {
    setState(() {
      if (currentIndex < models.length) {
        currentIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.background,
      body: Column(
        children: [
          Expanded(
            child: PageViewBuilder(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                models.length, (index) => buildPageIndicator(index)),
          )
        ],
      ),
    );
  }

  Container buildPageIndicator(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      height: 10,
      width: currentIndex == index ? 20 : 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }

  PageView PageViewBuilder() {
    return PageView.builder(
      itemCount: models.length,
      onPageChanged: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      itemBuilder: (context, index) {
        return Column(
          children: [
            Image.asset(models[index].imagePath),
            buildTitleText(index, context),
            buildDescriptionText(index, context)
          ],
        );
      },
      controller: _pageContr,
    );
  }

  Container buildDescriptionText(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 50), //20
      child: Center(
        child: Text(
          models[index].description,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Colors.black,
                wordSpacing: 5,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Container buildTitleText(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Center(
        child: Text(
          models[index].title,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
