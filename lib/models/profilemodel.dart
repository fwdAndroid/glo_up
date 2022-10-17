import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileModel {
  String profilePhotoURL;
  String firstName;
  String uid;
  String lastName;
  String date;
  String email;
  String phone;
  String occupy;
  List<String>? imageUrl;
  List<String>? interest;
  final age;
  ProfileModel(
      {required this.firstName,
      required this.profilePhotoURL,
      required this.interest,
      required this.uid,
      required this.lastName,
      required this.date,
      required this.email,
      required this.occupy,
      required this.age,
      required this.phone,
      required this.imageUrl});

  ///Converting OBject into Json Object
  Map<String, dynamic> toJson() => {
        'email': email,
        'interest': interest,
        'phone': phone,
        'uid': uid,
        'lastName': lastName,
        ' firstName': firstName,
        'date': date,
        'age': age,
        'occupy': occupy,
        'imageUrl': imageUrl,
        'profilePhotoURL': profilePhotoURL
      };

  ///
  static ProfileModel fromSnap(DocumentSnapshot snaps) {
    var snapshot = snaps.data() as Map<String, dynamic>;

    return ProfileModel(
        interest: snapshot['interest'],
        phone: snapshot['phone'],
        uid: snapshot['uid'],
        lastName: snapshot['lastName'],
        firstName: snapshot[' firstName'],
        date: snapshot['date'],
        age: snapshot['age'],
        occupy: snapshot['occupy'],
        imageUrl: snapshot['imageUrl'],
        profilePhotoURL: snapshot['profilePhotoURL'],
        email: snapshot['email']);
  }
}
