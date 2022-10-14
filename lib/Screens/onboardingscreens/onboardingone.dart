import 'package:flutter/material.dart';

import '../../utils/color.dart';

class OnBordingOne extends StatefulWidget {
  const OnBordingOne({Key? key}) : super(key: key);

  @override
  State<OnBordingOne> createState() => _OnBordingOneState();
}

class _OnBordingOneState extends State<OnBordingOne> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Image.asset('asset/datings.png')),
          SizedBox(
            height: 40,
          ),
          Text(
            "Find Your Partner",
            style: TextStyle(
                color: Colors.black.withOpacity(.68),
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur otis adipiscing elit. Sed hac iaculis tincidunt semper justo, dignissi, Magna consectetur tincindunt consect",
              style: TextStyle(
                  color: Colors.black.withOpacity(.68),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
