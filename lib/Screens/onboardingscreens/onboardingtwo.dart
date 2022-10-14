import 'package:flutter/material.dart';

import '../../utils/color.dart';

class OnBordingTwo extends StatelessWidget {
  const OnBordingTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime _selectedDate = DateTime.now();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 21),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Image.asset('asset/kiss.png')),
          SizedBox(
            height: 40,
          ),
          Text(
            "Express Your Feeling",
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
