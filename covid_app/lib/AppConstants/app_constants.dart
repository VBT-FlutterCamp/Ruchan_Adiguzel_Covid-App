// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class AppConstants {
  //STRING CONSTANTS BEGIN

  ///Returns = Next
  static String nextText = "Next";

  ///Returns = Skip
  static String skipText = "Skip";

  ///Returns = Continue
  static String continueText = "Continue";

  ///Returns = Covid-19 App
  static String appBarTextSplash = "Covid-19 App";

  ///Returns = Email Adress
  static String InputLabelText = "Email Adress";

  ///Returns = Password
  static String passText = "Password";

  ///Returns = Forgot Password
  static String forgotPassText = "Forgot Password";

  ///Returns = Login
  static String loginText = "LOGIN";

  ///Returns = Dont't have an account?
  static String createAccountPart1 = "Dont't have an account? ";

  ///Returns = Create
  static String createAccountPart2 = "Create";
//END OF STRING CONSTANTS

//COLOR CONSTANTS BEGIN
  static Color? greenish = Colors.tealAccent[700];
  static Color labelTextColor = Color(0xFF33586c);
  static Color background = Colors.white;
  static Color loginButtonColorRedish = Color(0xffff2360);

//END OF COLOR CONSTANTS

  ///It returns double value.
  ///
  ///Big_value is 20
  ///Medium_value is 10
  ///Low is 5
  static double BIG_VALUE = 20;
  static double MEDIUM_VALUE = 10;
  static double LOW_VALUE = 5;
  //END OF VALUES
}
