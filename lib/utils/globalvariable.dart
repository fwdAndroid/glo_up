// import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:glo_up/BottomNavigatonBar/Screens/fiber_dvr.dart';
import 'package:glo_up/BottomNavigatonBar/Screens/heart.dart';
import 'package:glo_up/BottomNavigatonBar/Screens/home.dart';
import 'package:glo_up/BottomNavigatonBar/Screens/profile.dart';
import 'package:glo_up/utils/chats/screens/chat_page.dart';
// import 'package:instagram/screens/add_post_screen.dart';
// import 'package:instagram/screens/feed_screen.dart';
// import 'package:instagram/screens/profile_screen.dart';
// import 'package:instagram/screens/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  Home_Screen(
    friendID: '',
    avatar: '',
  ),
  Fiber_dev(),
  ChatPage(),
  Heart(),

  // Profile()
  //  Random(),
  //  ChatPage(),
  //  Profile(),
];
