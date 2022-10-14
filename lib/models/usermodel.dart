import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String uid;
  String email;

  UserModel({
    required this.uid,
    required this.email,
  });

  ///Converting OBject into Json Object
  Map<String, dynamic> toJson() => {
        'uid': uid,
        'email': email,
      };

  ///
  static UserModel fromSnap(DocumentSnapshot snaps) {
    var snapshot = snaps.data() as Map<String, dynamic>;

    return UserModel(
      uid: snapshot['uid'],
      email: snapshot['email'],
    );
  }
}
