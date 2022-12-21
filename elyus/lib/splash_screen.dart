import 'package:elyus/core/OnBoardingScreens/container.dart';
import 'package:elyus/product/language/language_item.dart';
import 'package:elyus/product/language/paths.dart';
import 'package:flutter/material.dart';

import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BackgroundPicture(),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ImagePats.marbleIcon,
            width: 400,
          ),
          const Text(
            'ELYUS',
            style: TextStyle(
                color: Color.fromARGB(255, 36, 36, 36),
                letterSpacing: 12,
                fontSize: 60,
                decoration: TextDecoration.none),
          )
        ],
      )),
    );
  }
}
