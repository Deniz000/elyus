import 'package:elyus/product/language/paths.dart';
import 'package:flutter/material.dart';

import '../core/OnBoardingScreens/container.dart';

class IntroPageOne extends StatelessWidget {
  const IntroPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      path: ImagePats.reliableShopping,
      title: 'Reliable Shopping',
    );
  }
}
