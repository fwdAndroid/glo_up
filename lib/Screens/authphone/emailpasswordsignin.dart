import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:glo_up/BottomNavigatonBar/bottomnavigation.dart';
import 'package:glo_up/database/auth.dart';
import 'package:glo_up/Screens/authphone/emailpasswordsignup.dart';
import 'package:glo_up/Screens/authphone/login.dart';
import 'package:glo_up/Screens/authphone/utils.dart';

class EmailPasswordSignIn extends StatefulWidget {
  const EmailPasswordSignIn({Key? key}) : super(key: key);

  @override
  State<EmailPasswordSignIn> createState() => _EmailPasswordSignInState();
}

class _EmailPasswordSignInState extends State<EmailPasswordSignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  //Looding Variable
  bool _isLoading = false;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.clear();
    passController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "asset/mobo.png",
              width: 280,
              height: 220,
            ),
          ),
          Text(
            "Login to Your Account",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color(0xff3A3A3A)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  prefixIcon: Icon(Icons.email, color: Color(0xffB9B9B9)),
                  hintText: "Email",
                  hintStyle: TextStyle(color: Color(0xffB9B9B9)),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 0, color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: passController,
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  suffixIcon: Icon(Icons.visibility, color: Color(0xffB9B9B9)),
                  prefixIcon: Icon(Icons.lock, color: Color(0xffB9B9B9)),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Color(0xffB9B9B9)),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 0, color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: loginUser,
            child: Text('Sign in'),
            style: ElevatedButton.styleFrom(
                shape: StadiumBorder(), fixedSize: Size(331, 45)),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Forgot your password?",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "asset/l.png",
                width: 100,
              ),
              Text("or continue with"),
              Image.asset(
                "asset/l.png",
                width: 100,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => MobileScreenLayout()));
                },
                child: Image.asset(
                  "asset/Apple id.png",
                  width: 70,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                  onTap: () {
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
                  child: Image.asset("asset/Google.png", width: 70)),
              SizedBox(
                width: 20,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => MobileScreenLayout()));
                  },
                  child: Image.asset("asset/facebook.png", width: 70)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => EmailPasswordSignUpPage()));
            },
            child: RichText(
              text: TextSpan(
                text: "Don't have an account?",
                style: TextStyle(color: Colors.black, fontSize: 11),
                children: const <TextSpan>[
                  TextSpan(
                      text: " Sign up",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String rse = await AuthMethods().loginUpUser(
      email: emailController.text,
      pass: passController.text,
    );

    print(rse);
    setState(() {
      _isLoading = false;
    });
    if (rse == 'sucess') {
      Navigator.push(context,
          MaterialPageRoute(builder: (builder) => MobileScreenLayout()));
    } else {
      // showSnakBar(rse, context);
    }
  }
}
