import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:glo_up/Screens/authphone/verifyphone.dart';

class ContinuePhone extends StatelessWidget {
  const ContinuePhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PhoneController controller;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Enter Mobile Number",
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: PhoneFormField(
              key: Key('phone-field'),
              shouldFormat: true, // default
              decoration: InputDecoration(
                hintText: "Enter Phone Number",
              ),
              validator: PhoneValidator
                  .validMobile(), // default PhoneValidator.valid()
              countrySelectorNavigator: CountrySelectorNavigator.bottomSheet(),
              showFlagInInput: true, // default
              flagSize: 16, // default
              autofillHints: [AutofillHints.telephoneNumber], // default to null
              enabled: true, // default
              autofocus: false, // default
              autovalidateMode: AutovalidateMode.onUserInteraction, // default
              onChanged: (p) => print('changed $p'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: RichText(
              text: TextSpan(
                text:
                    "By clicking Log In, you agree with our Terms. Learn how process your data in our Privacy Policy and Cookies Policy. By clicking Log In, you agree with our Terms. Learn how",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.w400),
                children: const <TextSpan>[
                  TextSpan(
                      text:
                          " process your data in our Privacy Policy and Cookies",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: 11)),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => VerifyPhone()));
                },
                child: Text('Continue'),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Color(0xfff0092E1),
                    fixedSize: Size(300, 46))),
          ),
        ],
      ),
    );
  }
}
