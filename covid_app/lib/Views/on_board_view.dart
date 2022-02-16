import 'package:covid_app/AppConstants/app_constants.dart';
import 'package:covid_app/models/on_board_models.dart';
import 'package:flutter/material.dart';

class OnBoardView extends StatefulWidget {
  OnBoardView(
      {Key? key,
      required this.model,
      required this.onPressed,
      required this.index})
      : super(key: key);
  final OnBoardModel model;
  final VoidCallback onPressed;
  final int index;

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  int currentIndex = 0;
  final BoxDecoration _decoration = BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      color: Colors.red[400]);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Expanded(
        //   flex: 4,
        //   child: Image.asset(widget.model.imagePath),
        // ),
        Image.asset(widget.model.imagePath),
        // Expanded(
        //   flex: 4,
        //   child:
        Container(
          decoration: _decoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleText(context),
              DescriptionText(context),
              Buttons(),
              // Container(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: List.generate(
              //       models.length,
              //       (index) => buildsItemPage(index),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
        // )
      ],
    );
  }

  Container buildsItemPage(int index) {
    return Container(
      width: currentIndex == index ? 30 : 10,
      height: 10,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.black)),
    );
  }

  Container Buttons() {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SkipBTN(),
          NextBTN(),
        ],
      ),
    );
  }

  TextButton SkipBTN() {
    return TextButton(
      onPressed: widget.onPressed,
      child: const Text(
        "Skip",
        style: TextStyle(color: Colors.white),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 70, vertical: 14)),
      ),
    );
  }

  ElevatedButton NextBTN() {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Text("Next"),
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 70, vertical: 14)),
          backgroundColor:
              MaterialStateProperty.all<Color>(AppConstants.greenish!)),
    );
  }

  Container DescriptionText(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 50), //20
      child: Center(
        child: Text(
          widget.model.description,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Colors.white,
                wordSpacing: 5,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Container TitleText(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Center(
        child: Text(
          widget.model.title,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
