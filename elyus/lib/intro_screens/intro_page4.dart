import 'package:elyus/core/OnBoardingScreens/container.dart';
import 'package:elyus/product/language/paths.dart';
import 'package:flutter/material.dart';

class IntroPageFour extends StatelessWidget {
  const IntroPageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
        path: ImagePats.sevenTwentyFour, title: '7/24 Service');
  }
}
