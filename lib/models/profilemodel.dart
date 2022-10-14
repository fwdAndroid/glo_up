import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileModel {
  String FirstName;
  String uid;
  String LastName;
  String Date;
  final email;
  String phone;
  String occupy;
  final age;
  ProfileModel(
      {required this.FirstName,
      required this.uid,
      required this.LastName,
      required this.Date,
      required this.email,
      required this.occupy,
      required this.age,
      required this.phone});

  ///Converting OBject into Json Object
  Map<String, dynamic> toJson() => {
        'phone': phone,
        'uid': uid,
        'LastName': LastName,
        'FirstName': FirstName,
        'Date': Date,
        'age': age,
        'occupy': occupy,
      };

  ///
  static ProfileModel fromSnap(DocumentSnapshot snaps) {
    var snapshot = snaps.data() as Map<String, dynamic>;

    return ProfileModel(
        phone: snapshot['phone'],
        uid: snapshot['uid'],
        LastName: snapshot['LastName'],
        FirstName: snapshot['FirstName'],
        Date: snapshot['Date'],
        age: snapshot['age'],
        occupy: snapshot['occupy'],
        email: snapshot['email']);
  }
}
