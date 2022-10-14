import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:glo_up/BottomNavigatonBar/bottomnavigation.dart';
import 'package:glo_up/Screens/groupbutton/brand_select_screen.dart';
import 'package:glo_up/utils/constant.dart';
import 'package:image_picker/image_picker.dart';

class Best_Photo extends StatefulWidget {
  const Best_Photo({Key? key}) : super(key: key);

  @override
  State<Best_Photo> createState() => _Best_PhotoState();
}

class _Best_PhotoState extends State<Best_Photo> {
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
          'Add Photos',
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'Add your best photos to get a higher amount of \ndaily matches.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 80),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 160,
                child: DottedBorder(
                  color: Color(0xff0092E1),
                  // borderType: BorderType.RRect,
                  strokeWidth: 1,
                  // dashPattern: [6, 3, 2, 3],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  // padding: EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: _image != null
                        ? CircleAvatar(
                            radius: 59, backgroundImage: MemoryImage(_image!))
                        : Container(
                            height: 300,
                            width: 200,
                            // color: Colors.pink.shade200,
                            child: IconButton(
                                onPressed: selectImage,
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ))),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 200,
                width: 160,
                child: DottedBorder(
                  color: Color(0xff0092E1),
                  // borderType: BorderType.RRect,
                  strokeWidth: 1,
                  // dashPattern: [6, 3, 2, 3],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  // padding: EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                        height: 300,
                        width: 200,
                        // color: Colors.pink.shade200,
                        child: IconButton(
                            onPressed: selectImage,
                            icon: Icon(
                              Icons.add,
                              color: Colors.black,
                            ))),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 160,
                child: DottedBorder(
                  color: Color(0xff0092E1),
                  // borderType: BorderType.RRect,
                  strokeWidth: 1,
                  // dashPattern: [6, 3, 2, 3],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  // padding: EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                        height: 300,
                        width: 200,
                        // color: Colors.pink.shade200,
                        child: IconButton(
                            onPressed: selectImage,
                            icon: Icon(
                              Icons.add,
                              color: Colors.black,
                            ))),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 200,
                width: 160,
                child: DottedBorder(
                  color: Color(0xff0092E1),
                  // borderType: BorderType.RRect,
                  strokeWidth: 1,
                  // dashPattern: [6, 3, 2, 3],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  // padding: EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                        height: 300,
                        width: 200,
                        // color: Colors.pink.shade200,
                        child: IconButton(
                            onPressed: selectImage,
                            icon: Icon(
                              Icons.add,
                              color: Colors.black,
                            ))),
                  ),
                ),
              ),
            ],
          ),

          Spacer(),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => BrandSelectScreen()));
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

          // SizedBox(height: 20)
        ],
      ),
    );
  }

  selectImage() async {
    Uint8List ui = await pickImage(ImageSource.gallery);
    setState(() {
      _image = ui;
    });
  }
}
