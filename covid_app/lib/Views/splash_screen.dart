import 'package:covid_app/AppConstants/app_constants.dart';
import 'package:covid_app/AppConstants/values.dart';
import 'package:covid_app/models/on_board_models.dart';
import 'package:flutter/material.dart';

import 'other_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late PageController _pageContr;
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    _pageContr = PageController();
    _pageContr.initialPage;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageContr.dispose();
    super.dispose();
  }

  void nextPage() {
    if (currentIndex == models.length - 1) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => OtherScreen(),
      ));
    }
    _pageContr.nextPage(
        duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
    print(currentIndex);
  }

  void skipPage() {
    _pageContr.jumpToPage(models.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.background,
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageViewBuilder(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: currentIndex == models.length - 1 ? null : skipPage,
                child: Text("Skip"),
              ),
              ElevatedButton(
                onPressed: nextPage,
                child: Text(currentIndex == models.length - 1
                    ? AppConstants.continueText
                    : AppConstants.nextText),
              ),
            ],
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

  Widget buildPageIndicator(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.symmetric(
          horizontal: Values.LOW.getValues, vertical: Values.MEDIUM.getValues),
      height: Values.MEDIUM.getValues,
      width: currentIndex == index
          ? AppConstants.BIG_VALUE
          : AppConstants.MEDIUM_VALUE,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConstants.BIG_VALUE),
          color: Colors.red),
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
            Expanded(
              child: buildContent(index, context),
            ),
          ],
        );
      },
      controller: _pageContr,
    );
  }

  Container buildContent(int index, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Values.HIGH.getValues),
              topRight: Radius.circular(Values.HIGH.getValues)),
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTitleText(index, context),
          buildDescriptionText(index, context),
        ],
      ),
    );
  }

  Container buildDescriptionText(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: Values.LOW.getValues,
          horizontal: Values.MEDIUM.multiplyValues(5)),
      child: Center(
        child: Text(
          models[index].description,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Colors.grey[900],
                wordSpacing: Values.LOW.getValues,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Container buildTitleText(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Values.MEDIUM.multiplyValues(5)),
      child: Center(
        child: Text(
          models[index].title,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: const Color(0xFF33586c)),
        ),
      ),
    );
  }
}
