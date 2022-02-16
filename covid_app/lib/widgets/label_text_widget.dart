import 'package:covid_app/AppConstants/app_constants.dart';
import 'package:flutter/material.dart';

class LabelTextWidget extends StatelessWidget {
  final String labelText;
  const LabelTextWidget({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
    //   margin: EdgeInsets.only(top: 50),
    //   child: Center(
    //     child: Text(
    //       labelText,
    //       style: Theme.of(context)
    //           .textTheme
    //           .headline5!
    //           .copyWith(color: Colors.white),
    //     ),
    //   ),
    // );
  }
}
