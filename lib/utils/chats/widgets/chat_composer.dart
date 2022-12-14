import 'package:flutter/material.dart';
import '../app_theme.dart';

Container buildChatComposer() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    color: Colors.white,
    height: 100,
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween, // added line
                        mainAxisSize: MainAxisSize.min, // added line
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "asset/link.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("asset/cam.png",
                                width: 20, height: 20),
                          )
                        ],
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: const BorderSide(
                            color: Color(0xffFF1111), width: 0.0),
                      ),
                      border: const OutlineInputBorder(),
                      fillColor: Color(0xffF1F1F1),
                      filled: true,
                      hintText: 'Type Something.....',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffFF1111), shape: BoxShape.circle),
                  child: Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
