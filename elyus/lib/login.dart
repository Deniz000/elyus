import 'dart:io';

import 'package:elyus/core/Colors/colors.dart';
import 'package:elyus/product/language/language_item.dart';
import 'package:flutter/material.dart';

import 'core/Buttons/custom_button.dart';
import 'core/LoginDesing/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
        child: Column(
          children: [
            //Login icon
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Image.asset(
                'assets/png/sculpture.png',
                width: 200,
              ),
            ),
            SizedBox(
              height: SizeBoxDimensions.maxHeight,
            ),
            const Text(
              LanguageItems.logIn,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: SizeBoxDimensions.maxHeight,
            ),

            //Text Widgets : User Name
            CustomTextWidget(
              hint: LanguageItems.userName,
              textInputType: TextInputType.text,
              obscureText: false,
            ),
            SizedBox(
              height: SizeBoxDimensions.minHeight,
            ),

            // Text Widgets : Password
            CustomTextWidget(
              hint: LanguageItems.password,
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            SizedBox(
              height: SizeBoxDimensions.minHeight,
            ),

            //Forgot Password?
            const Text(
              LanguageItems.forgotPassword,
              textAlign: TextAlign.start,
            ),

            SizedBox(
              height: SizeBoxDimensions.maxHeight,
            ),
            // Log in button
            CustomButtonLarge(text: LanguageItems.logIn),

            SizedBox(
              height: SizeBoxDimensions.maxHeight,
            ),
            RowWidget(LanguageItems.notMember, LanguageItems.register),
          ],
        ),
      ),
    ));
  }
}

Row RowWidget(String text1, String text2) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text(text1),
    Text(
      text2,
      style: const TextStyle(color: ColorSelect.mainColor),
    ),
  ]);
}

class SizeBoxDimensions {
  static double maxHeight = 30;
  static double minHeight = 10.0;
}
