// import 'package:college_meet/Screens/authphone/selectinterest.dart';
import 'package:flutter/material.dart';

import '../../BottomNavigatonBar/Screens/Profile screens/profile.dart';
import '../../utils/color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'continuephone.dart';

class VerifyPhone extends StatefulWidget {
  const VerifyPhone({Key? key}) : super(key: key);

  @override
  State<VerifyPhone> createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Enter OTP",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Code has been sent to +234 80******56"),
          SizedBox(height: 50),
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
              child: PinCodeTextField(
                appContext: context,
                pastedTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                length: 4,

                animationType: AnimationType.fade,
                validator: (v) {
                  if (v!.length < 3) {
                    return "I'm from validator";
                  } else {
                    return null;
                  }
                },
                pinTheme: PinTheme(),
                animationDuration: const Duration(milliseconds: 300),
                // errorAnimationController: errorController,
                // controller: textEditingController,
                keyboardType: TextInputType.number,
                // boxShadows: const [
                //   BoxShadow(
                //     offset: Offset(0, 1),
                //     color: Colors.black12,
                //     blurRadius: 10,
                //   )
                // ],
                onCompleted: (v) {
                  debugPrint("Completed");
                },
                // onTap: () {
                //   print("Pressed");
                // },
                onChanged: (value) {
                  debugPrint(value);
                  setState(() {
                    // currentText = value;
                  });
                },
                beforeTextPaste: (text) {
                  debugPrint("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              )),
          SizedBox(height: 30),
          Text("Resend Code in 55s"),
          SizedBox(height: 50),
          SizedBox(height: 60),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => Profile()));
                },
                child: Text('Continue'),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Color(0xfff0092E1),
                    fixedSize: Size(330, 50))),
          ),
        ],
      ),
    );
  }
}
