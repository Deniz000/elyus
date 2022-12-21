import 'package:elyus/core/OnBoardingScreens/container.dart';
import 'package:elyus/product/language/paths.dart';
import 'package:flutter/material.dart';

class IntroPageFourOne extends StatelessWidget {
  const IntroPageFourOne({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(path: ImagePats.droneIcon, title: 'Drone Support');
  }
}
