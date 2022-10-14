import 'package:flutter/material.dart';

class Fiber_dev extends StatelessWidget {
  const Fiber_dev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 176,
                  height: 248,
                  child: Stack(
                    children: [
                      Image.asset(
                        "asset/Rectangle 17.png",
                        width: 176,
                        height: 248,
                        fit: BoxFit.fill,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20, left: 10),
                          child: Text(
                            "Movie Night",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 176,
                  height: 248,
                  child: Stack(
                    children: [
                      Image.asset(
                        "asset/Rectangle 17.png",
                        width: 176,
                        height: 248,
                        fit: BoxFit.fill,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20, left: 10),
                          child: Text(
                            "Movie Night",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 363,
              height: 148,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "asset/Rectangle 19.png",
                      fit: BoxFit.cover,
                      width: 363,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20, left: 10),
                      child: Text(
                        "Just Friends",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text("For You"),
              subtitle: Text("Recommended based on your profile"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "asset/Rectangle 17.png",
                  width: 176,
                  height: 248,
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "asset/Rectangle 17.png",
                  width: 176,
                  height: 248,
                  fit: BoxFit.fill,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
