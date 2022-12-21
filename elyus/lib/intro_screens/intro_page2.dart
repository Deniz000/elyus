import 'package:elyus/core/OnBoardingScreens/container.dart';
import 'package:elyus/product/language/paths.dart';
import 'package:flutter/material.dart';

class IntroPageTwo extends StatelessWidget {
  const IntroPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
        path: ImagePats.easyPayment, title: 'Easy   Payment');
  }
}
