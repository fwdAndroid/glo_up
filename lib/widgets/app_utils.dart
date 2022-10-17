import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppUtils {
  interestsWidget({text, selected, onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 5, right: 5, bottom: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: selected == true ? Colors.blue : Colors.white,
            border:
                Border.all(color: Colors.blue.withOpacity(0.5), width: 1.5)),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image.asset(
            //   "assets/like.png",
            //   scale: 35,
            // ),
            // const SizedBox(
            //   width: 5,
            // ),
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: selected == true ? Colors.white : Colors.blue,
                fontFamily: "ProximaNova",
              ),
            ),
          ],
        ),
      ),
    );
  }

  callSmallButtons({colorOfButton, assetImage, onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: colorOfButton,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          assetImage,
          scale: 3.5,
        ),
      ),
    );
  }
}
