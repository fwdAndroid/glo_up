import 'package:flutter/material.dart';
import 'package:glo_up/widgets/backgroundwiget.dart';
import 'package:glo_up/widgets/cardsstackwidget.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 60,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "asset/Rectangle 10.png",
              width: 34,
              height: 34,
            ),
          ),
          title: Column(
            children: [
              Text(
                'Good evening',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 9,
                    color: Colors.black),
              ),
              Text(
                'John Doe',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                    color: Colors.black),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "asset/Vector.png",
                height: 14,
                width: 16,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // BackgroudCurveWidget(),
            CardsStackWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Image.asset(
                    "asset/refresh.png",
                    width: 28,
                    height: 28,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                    child:
                        Image.asset("asset/cancel.png", width: 41, height: 41)),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                    child: Image.asset("asset/super like.png",
                        width: 28, height: 28)),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                    child: Image.asset("asset/like.png", width: 41, height: 41))
              ],
            )
          ],
        ));
  }
}
