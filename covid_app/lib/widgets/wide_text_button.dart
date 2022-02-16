import 'package:flutter/material.dart';

class WideTextBTN extends StatelessWidget {
  const WideTextBTN({Key? key, required this.contentOfButton})
      : super(key: key);
  final String contentOfButton;
  final Color? textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        contentOfButton,
        style: TextStyle(color: Colors.white),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 70, vertical: 14)),
      ),
    );
  }
}
