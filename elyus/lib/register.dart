import 'package:elyus/core/Buttons/custom_button.dart';
import 'package:elyus/core/Colors/colors.dart';
import 'package:elyus/core/LoginDesing/text_widget.dart';
import 'package:elyus/login.dart';
import 'package:elyus/product/language/language_item.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
        child: Column(
          children: [
            Image.asset(
              'assets/png/registerMarble.png',
              width: 200,
            ),
            SizedBox(
              height: SizeBoxDimensions.maxHeight,
            ),
            const Text(
              LanguageItems.createAccount,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: SizeBoxDimensions.maxHeight,
            ),
            CustomTextWidget(
                hint: LanguageItems.userName,
                textInputType: TextInputType.text,
                obscureText: false),
            SizedBox(
              height: SizeBoxDimensions.minHeight,
            ),
            CustomTextWidget(
                hint: LanguageItems.email,
                textInputType: TextInputType.emailAddress,
                obscureText: false),
            SizedBox(
              height: SizeBoxDimensions.minHeight,
            ),
            CustomTextWidget(
                hint: LanguageItems.password,
                textInputType: TextInputType.visiblePassword,
                obscureText: true),
            SizedBox(
              height: SizeBoxDimensions.minHeight,
            ),
            CustomTextWidget(
                hint: LanguageItems.passwordAgain,
                textInputType: TextInputType.visiblePassword,
                obscureText: true),
            SizedBox(
              height: SizeBoxDimensions.minHeight,
            ),
            SizedBox(
              height: SizeBoxDimensions.maxHeight,
            ),
            CustomButtonLarge(
              text: LanguageItems.signUp,
            ),
            SizedBox(
              height: SizeBoxDimensions.minHeight,
            ),
            RowWidget(LanguageItems.alreadyUser, LanguageItems.logIn)
          ],
        ),
      ),
    ));
  }
}

class _TextWidget extends StatelessWidget {
  _TextWidget(
      {Key? key,
      required this.hint,
      required this.textInputType,
      required this.obscureText})
      : super(key: key);
  String hint;
  TextInputType textInputType;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorSelect.widgetWhite,
        ),
        padding: const EdgeInsets.only(left: 20),
        height: 55,
        child: TextField(
          obscureText: obscureText,
          keyboardType: textInputType,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
          ),
        ));
  }
}
