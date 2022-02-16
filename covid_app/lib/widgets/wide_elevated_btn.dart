import 'package:covid_app/AppConstants/app_constants.dart';
import 'package:flutter/material.dart';

class WideElevatedBTN extends StatefulWidget {
  WideElevatedBTN({Key? key, required this.contentTextOfBtn}) : super(key: key);
  final String contentTextOfBtn;

  @override
  State<WideElevatedBTN> createState() => _WideElevatedBTNState();
}

class _WideElevatedBTNState extends State<WideElevatedBTN> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(widget.contentTextOfBtn),
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 70, vertical: 14)),
            backgroundColor:
                MaterialStateProperty.all<Color>(AppConstants.greenish!)),
      ),
    );
  }
}
