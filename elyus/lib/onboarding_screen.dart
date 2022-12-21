import 'package:elyus/intro_screens/intro_page1.dart';
import 'package:elyus/intro_screens/intro_page2.dart';
import 'package:elyus/intro_screens/intro_page3.dart';
import 'package:elyus/intro_screens/intro_page4.dart';
import 'package:elyus/product/language/language_item.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_screens/intro_page4.1.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _controller = PageController();

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 3);
            });
          },
          controller: _controller,
          children: const [
            IntroPageOne(),
            IntroPageTwo(),
            IntroPageThree(),
            IntroPageFourOne(),
            IntroPageFour()
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 90, right: 20, left: 20),
          child: Container(
              alignment: const Alignment(0, 0.8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SmoothPageIndicator(
                      controller: _controller,
                      count: 5,
                      axisDirection: Axis.horizontal,
                      effect: const SlideEffect(
                          spacing: 10,
                          radius: 5,
                          dotWidth: 30,
                          dotHeight: 10,
                          paintStyle: PaintingStyle.fill,
                          strokeWidth: 10,
                          dotColor: Colors.grey,
                          activeDotColor: Colors.black,
                          offset: 16)),
                  const SizedBox(
                    height: 15,
                  ),
                  //next
                  onLastPage
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(128, 3, 3, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: (() {
                              _nextPage();
                            }),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Text(
                                LanguageItems.done,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(128, 3, 3, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: (() {
                              _nextPage();
                            }),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Text(
                                LanguageItems.next,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                ],
              )),
        )
      ]),
    );
  }

  Future<void> _previousPage() {
    return _controller.previousPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeInSine);
  }

  Future<void> _nextPage() {
    return _controller.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeInSine);
  }
}
