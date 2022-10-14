import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/globalvariable.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  int _page = 0;
  late PageController pageController;

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: homeScreenItems,
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: navigationTapped,
        items: [
          // backgroundColor: primaryColor,

          BottomNavigationBarItem(
            icon: Image.asset(
              _page == 0 ? 'asset/homered.png' : "asset/home.png",
              width: 50,
              height: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _page == 1 ? 'asset/gridred.png' : "asset/grid.png",
              width: 50,
              height: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _page == 2 ? 'asset/chatred.png' : "asset/chat.png",
              width: 50,
              height: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _page == 3 ? 'asset/profile.png' : "asset/profile.png",
              width: 50,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
