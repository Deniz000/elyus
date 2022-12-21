import 'package:elyus/core/OnBoardingScreens/container.dart';
import 'package:elyus/product/language/paths.dart';
import 'package:flutter/material.dart';

class IntroPageThree extends StatelessWidget {
  const IntroPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
        path: ImagePats.likeIcon, title: 'User Satisfaction');
  }
}
