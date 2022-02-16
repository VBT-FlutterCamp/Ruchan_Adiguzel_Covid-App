import 'package:covid_app/AppConstants/app_constants.dart';
import 'package:covid_app/models/on_board_models.dart';
import 'package:covid_app/widgets/label_text_widget.dart';
import 'package:covid_app/widgets/label_under_content_widget.dart';
import 'package:covid_app/widgets/wide_elevated_btn.dart';
import 'package:covid_app/widgets/wide_text_button.dart';
import 'package:flutter/material.dart';

class OnBoardView extends StatelessWidget {
  OnBoardView({Key? key, required this.model}) : super(key: key);
  final BoxDecoration _decoration = BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      color: Colors.red[400]);
  final OnBoardModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(flex: 4, child: Image.asset(model.imagePath)),
        Expanded(
          flex: 4,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: _decoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleText(context),
                DescriptionText(context),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WideTextBTN(contentOfButton: AppConstants.skipText),
                      WideElevatedBTN(
                        contentTextOfBtn: AppConstants.nextText,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Container DescriptionText(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      child: Center(
        child: Text(
          model.description,
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
          model.title,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
