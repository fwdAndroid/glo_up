import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:glo_up/models/profilemodel.dart';

class FirestoreMethods {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  //Upload PostImage to Firestore
  Future<String> uploadPosts({
    required String email,
    required String firstName,
    required String uid,
    required String lastName,
    required String occupy,
    required String age,
    required String phone,
    required String date,
    required List<String> interest,
    required List<String> imageUrl,
    required String photoUrl,
  }) async {
    String res = "Some Error";
    try {
      ProfileModel profileModel = ProfileModel(
          profilePhotoURL: photoUrl,
          firstName: firstName,
          uid: uid,
          imageUrl: imageUrl,
          interest: interest,
          lastName: lastName,
          email: email,
          date: date,
          phone: phone,
          occupy: occupy,
          age: age);

      ///Uploading Post To Firebase
      _firebaseFirestore
          .collection('profile')
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

  Future<String> updateList({
    required String key,
    required List value,
  }) async {
    String res = 'Some error occured';
    debugPrint(res);
    try {
      await FirebaseFirestore.instance
          .collection('profile')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({
        key: value,
      });
      res = 'success';
      debugPrint(res);
    } on FirebaseException catch (e) {
      res = e.toString();
      debugPrint(res);
    }
    return res;
  }
}

