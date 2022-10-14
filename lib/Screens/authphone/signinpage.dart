import 'package:firebase_auth/firebase_auth.dart';
import 'package:glo_up/Screens/authphone/auth.dart';
import 'package:glo_up/Screens/authphone/utils.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:glo_up/BottomNavigatonBar/bottomnavigation.dart';
import 'package:glo_up/Screens/authphone/emailpasswordsignin.dart';
import 'package:glo_up/Screens/authphone/signuppage.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "asset/sign.png",
              width: 280,
              height: 280,
            ),
          ),
          Text(
            "Let’s get you back in!",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color(0xff3A3A3A)),
          ),
          SizedBox(
            height: 40,
          ),
          SocialLoginButton(
            text: 'Continue with Google',
            borderRadius: 20,
            height: 45,
            width: 331,
            backgroundColor: Colors.white,
            buttonType: SocialLoginButtonType.google,
            onPressed: () {
              try {
                Customdialog.showDialogBox(context);
                AuthUtils().signInWithGoogle().then((value) {
                  AuthUtils().socialLoginUser(context);
                }).catchError((e) {});
              } on FirebaseAuthException catch (e) {
                Navigator.pop(context);

                Customdialog.showBox(context, e.toString());
              }
            },
          ),
          SizedBox(
            height: 13,
          ),
          SocialLoginButton(
            // imageURL: "asset/f.png",
            // imageWidth: 20,
            text: 'Continue with Facebook',
            textColor: Colors.black,
            borderRadius: 20,
            backgroundColor: Colors.white,
            height: 45,
            width: 331,
            // backgroundColor: Colors.white,
            // disabledBackgroundColor: Colors.white,
            buttonType: SocialLoginButtonType.facebook,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => MobileScreenLayout()));
            },
          ),
          SizedBox(
            height: 13,
          ),
          SocialLoginButton(
            text: 'Continue with Apple',
            borderRadius: 20,
            height: 45,
            width: 331,
            buttonType: SocialLoginButtonType.apple,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => MobileScreenLayout()));
            },
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Image.asset("asset/or.png")),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => EmailPasswordSignIn()));
            },
            child: Text('Sign in With Password'),
            style: ElevatedButton.styleFrom(
                shape: StadiumBorder(), fixedSize: Size(331, 45)),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => SignUpPage()));
            },
            child: RichText(
              text: TextSpan(
                text: "Don't have an account?",
                style: TextStyle(color: Colors.black, fontSize: 11),
                children: const <TextSpan>[
                  TextSpan(
                      text: " Sign up", style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
