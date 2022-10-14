import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:glo_up/Screens/splash.dart';

// import 'BottomNavigatonBar/Screens/profile.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      // Home_Screen()
    );
  }
}
