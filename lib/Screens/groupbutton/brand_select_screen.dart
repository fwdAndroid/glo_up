import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:glo_up/Screens/Profile_Screen/expecrtations.dart';

import 'scroll_ijector.dart';

class BrandSelectScreen extends StatefulWidget {
  const BrandSelectScreen({Key? key}) : super(key: key);

  @override
  State<BrandSelectScreen> createState() => _BrandSelectScreenState();
}

class _BrandSelectScreenState extends State<BrandSelectScreen> {
  String? brand;
  String? carrier;
  String? price;
  Uint8List? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Interests',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: TextStyle(color: Color(0xffD6D6D6), fontSize: 18),
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Consider as brands

          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'Select your interests to match with soul-mates \nwho have similar things in common.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GroupButton(
            isRadio: false,
            buttons: [
              'Youtube',
              'Gaming',
              'Dancing',
              'Language',
              'Music',
              'Movie',
              'Photography',
              'Architecture',
              'Fashion',
              'Book',
              'Writing',
              'Nature',
              'Painting',
              'Football',
              'People',
              'Animals',
              'Gym & fitness',
              'Food & Drink',
              'Travel & Places'
            ],
            options: GroupButtonOptions(
                spacing: 10,
                selectedTextStyle: TextStyle(color: Colors.white, fontSize: 20),
                unselectedTextStyle:
                    TextStyle(color: Color(0xffD6D6D6), fontSize: 20),
                unselectedBorderColor: Color(0xffD6D6D6),
                borderRadius: BorderRadius.circular(20),
                selectedColor: Color(0xffFF1111)),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => Expectations()));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: Color(0xfff0092E1),
                      fixedSize: Size(300, 50))),
            ),
          ),
        ],
      ),
    );
  }
}
