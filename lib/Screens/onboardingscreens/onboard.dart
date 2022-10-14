import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:glo_up/Screens/authphone/signinpage.dart';
import 'package:glo_up/Screens/onboardingscreens/onboardingthree.dart';
import 'package:glo_up/Screens/onboardingscreens/onboardingone.dart';
import 'package:glo_up/Screens/onboardingscreens/onboardingtwo.dart';

import '../authphone/continuephone.dart';

class OnBoardingScreens extends StatefulWidget {
  @override
  _OnBoardingScreensState createState() => _OnBoardingScreensState();
}

int currentPage = 0;

final _controller = PageController(initialPage: 0);
List<Widget> _pages = [
  Column(children: [
    Expanded(child: OnBordingOne()),
  ]),
  Column(
    children: [
      Expanded(
        child: OnBordingTwo(),
      ),
    ],
  ),
  Column(
    children: [
      Expanded(
        child: OnBordingThree(),
      ),
    ],
  ),
];

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  @override
  Widget build(BuildContext context) {
    //  Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: _pages,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
          ),
          DotsIndicator(
            dotsCount: _pages.length,
            position: currentPage.toDouble(),
            decorator: DotsDecorator(
              color: Color(0xffE0E0E0), // Inactive color
              activeColor: Colors.black.withOpacity(.65),
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => SignIn()));
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(color: Colors.black.withOpacity(.65)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => SignIn()));
                    },
                    child: Text(
                      currentPage == 0
                          ? "Next"
                          : currentPage == 1
                              ? "Next"
                              : "Get Started",
                      style: TextStyle(color: Colors.black.withOpacity(.65)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
