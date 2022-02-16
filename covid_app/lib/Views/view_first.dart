import 'package:covid_app/AppConstants/app_constants.dart';
import 'package:covid_app/widgets/label_text_widget.dart';
import 'package:covid_app/widgets/label_under_content_widget.dart';
import 'package:covid_app/widgets/wide_elevated_btn.dart';
import 'package:covid_app/widgets/wide_text_button.dart';
import 'package:flutter/material.dart';

class ViewFirst extends StatelessWidget {
  ViewFirst({Key? key}) : super(key: key);
  final BoxDecoration _decoration = BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      color: Colors.red[400]);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(flex: 4, child: Image.asset("assets/images/img_1.png")),
        // Spacer(flex: 5),
        Expanded(
          flex: 4,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: _decoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LabelTextWidget(labelText: AppConstants.symtomps_label),
                LabelUnderContent(contentText: AppConstants.symtomps),
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
}
