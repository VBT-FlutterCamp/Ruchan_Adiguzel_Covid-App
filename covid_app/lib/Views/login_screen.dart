// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:covid_app/AppConstants/app_constants.dart';
import 'package:covid_app/AppConstants/values.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isEnable = false;
  bool _isEyeOpened = false;

  var _mailController = TextEditingController();
  var _passwordController = TextEditingController();

  void changePasswordText() {
    setState(() {
      _isEyeOpened = !_isEyeOpened;
    });
  }

//TODO  Adding physics for overflow issue
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // physics: ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WelcomeText(context),
                MailFormField(),
                PasswordFormField(),
                ForgotPassButton(),
                LoginBTN(context)
              ],
            ),
            CreateAccountText()
          ],
        ),
      ),
    );
  }

  Widget CreateAccountText() {
    return Container(
      margin: EdgeInsets.only(bottom: Values.HIGH.getValues),
      child: RichText(
        text: TextSpan(
            text: AppConstants.createAccountPart1,
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: AppConstants.createAccountPart2,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
            ]),
      ),
    );
  }

  Widget LoginBTN(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Values.HIGH.getValues),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          AppConstants.loginText,
          style: Theme.of(context)
              .textTheme
              .headline5! //BURADA FORCE DIŞINDA BİR YÖNTEM VAR MI?
              .copyWith(color: Colors.white),
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
              vertical: Values.MEDIUM.multiplyValues(2),
              horizontal: Values.MEDIUM.multiplyValues(15),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
              AppConstants.loginButtonColorRedish),
          elevation: MaterialStateProperty.all<double>(0),
        ),
      ),
    );
  }

  Row ForgotPassButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Values.HIGH.getValues,
              vertical: Values.MEDIUM.getValues),
          child: GestureDetector(
            onTap: () {},
            child: Text(
              AppConstants.forgotPassText,
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ),
      ],
    );
  }

  Widget WelcomeText(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Values.HIGH.multiplyValues(3)),
      padding: EdgeInsets.all(Values.HIGH.getValues),
      child: Text(
        "Welcome",
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }

  Padding PasswordFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Values.HIGH.getValues, vertical: Values.LOW.getValues),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text(AppConstants.passText),
          suffixIcon: GestureDetector(
              onTap: changePasswordText,
              child: _isEyeOpened
                  ? Icon(Icons.remove_red_eye_outlined)
                  : Icon(Icons.remove_red_eye_rounded)),
        ),
        controller: _passwordController,
        obscureText: _isEyeOpened ? true : false,
      ),
    );
  }

  Padding MailFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Values.HIGH.getValues, vertical: Values.LOW.getValues),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text(AppConstants.InputLabelText),
        ),
        controller: _mailController,
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
