import 'package:flutter/material.dart';

class LabelUnderContent extends StatelessWidget {
  final String contentText;
  const LabelUnderContent({Key? key, required this.contentText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      child: Center(
        child: Text(
          contentText,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Colors.white,
                wordSpacing: 5,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
