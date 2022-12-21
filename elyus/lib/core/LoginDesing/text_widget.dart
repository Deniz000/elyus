import 'package:flutter/material.dart';

class CustomTextWidget extends StatefulWidget {
  CustomTextWidget(
      {super.key,
      required this.hint,
      required this.textInputType,
      required this.obscureText});
  String hint;
  TextInputType textInputType;
  bool obscureText;

  @override
  State<CustomTextWidget> createState() => _CustomTextWidgetState();
}

class _CustomTextWidgetState extends State<CustomTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 234, 231, 231),
          border: Border.all(color: Colors.white),
        ),
        padding: const EdgeInsets.only(left: 20),
        height: 55,
        child: TextField(
          obscureText: widget.obscureText,
          keyboardType: widget.textInputType,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hint,
          ),
        ));
  }
}
