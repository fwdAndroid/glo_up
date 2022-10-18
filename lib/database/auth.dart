import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:glo_up/BottomNavigatonBar/Screens/Profile%20screens/profile.dart';
import 'package:glo_up/BottomNavigatonBar/bottomnavigation.dart';
import 'package:glo_up/Screens/authphone/utils.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class AuthUtils {
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  socialLoginUser(BuildContext context) async {
    String userName = FirebaseAuth.instance.currentUser!.displayName.toString();
    String email = FirebaseAuth.instance.currentUser!.email.toString();
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({
        "id": FirebaseAuth.instance.currentUser!.uid,
        'Email': email,
      }).then((value) {
        Customdialog().showInSnackBar("Logged in", context);
        // Provider.of<CircularProgressProvider>(context,listen: false).setValue(false);
        Customdialog.closeDialog(context);
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => Profile()), (route) => false);
      });
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);

      Customdialog.showBox(context, e.toString());
    }
  }
}
