import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

List carousel = [
  'https://cdn.pixabay.com/photo/2016/06/25/12/48/go-pro-1478810_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/06/22/19/30/automobile-5330343_960_720.jpg',
  'https://cdn.pixabay.com/photo/2015/12/06/18/28/capsules-1079838_960_720.jpg',
];




//Image Picker Code
pickImage(ImageSource source) async {
  final ImagePicker imagePicker = ImagePicker();
  XFile ? file = await imagePicker.pickImage(source: source);

  if(file != null){
    return await file.readAsBytes();
  }
  print('No Image Selected');
}


/// SnakBar Code
showSnakBar(String contexts,BuildContext context){
 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(contexts)));
}