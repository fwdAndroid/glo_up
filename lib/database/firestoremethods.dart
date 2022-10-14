import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:glo_up/database/storagemethods.dart';
import 'package:glo_up/models/profilemodel.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class FirestoreMethods {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  //Upload PostImage to Firestore
  Future<String> uploadPosts(
      {required String email,
      required String firstName,
      required String uid,
      required String lastName,
      required String occupy,
      required String age,
      required String phone,
      required String date}) async {
    String res = "Some Error";
    try {
      ProfileModel profileModel = ProfileModel(
          FirstName: firstName,
          uid: uid,
          LastName: lastName,
          email: email,
          Date: date,
          phone: phone,
          occupy: occupy,
          age: age);

      ///Uploading Post To Firebase
      _firebaseFirestore
          .collection('userss')
          .doc(uid)
          .set(profileModel.toJson());
      res = 'Sucessfully Uploaded in Firebase';
    } catch (e) {
      res = e.toString();
    }

    return res;
  }

  /// Deleting Posts///
  Future<void> deletePost(String postid) async {
    try {
      _firebaseFirestore.collection('posts').doc(postid).delete();
    } catch (e) {}
  }
}
