import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:glo_up/database/firestoremethods.dart';
import 'package:glo_up/utils/constant.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Screens/Profile_Screen/best_photo.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _lastController = TextEditingController();

  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _occupayController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Uint8List? _image;

  bool _isLoading = false;
  var items = [
    'Male',
    'Female',
  ];
  String dropdownvalue = 'Male';
  var age = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
    '32',
    '33',
    '34',
    '35',
    '36',
    '37',
    '38',
    '39',
    '40'
  ];

  String dropdownage = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Fill your Profile",
          style: TextStyle(color: Color(0xff3A3A3A)),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(

              // height: 60,
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),

              //  padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.circular(30),
                  border: Border.all(color: Color(0xffFAFAFA))),
              // border: Border.all(color: Colors.grey,width: 0.5)

              child: TextFormField(
                validator: (v) {
                  if (v!.isEmpty) {
                    return " Please Enter username..\ ";
                  }

                  return null;
                },
                controller: _firstController,
                decoration: InputDecoration(
                  hintText: 'First Name',
                  contentPadding: EdgeInsets.only(left: 20),
                  border: InputBorder.none,
                  hintStyle: GoogleFonts.getFont('Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8D8989),
                      fontSize: 15,
                      fontStyle: FontStyle.normal),
                ),
              )),
          Container(

              // height: 60,
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),

              //  padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.circular(30),
                  border: Border.all(color: Color(0xffFAFAFA))),
              // border: Border.all(color: Colors.grey,width: 0.5)

              child: TextFormField(
                validator: (v) {
                  if (v!.isEmpty) {
                    return " Please Enter username..\ ";
                  }

                  return null;
                },
                controller: _lastController,
                decoration: InputDecoration(
                  hintText: 'Last Name',
                  contentPadding: EdgeInsets.only(left: 20),
                  border: InputBorder.none,
                  hintStyle: GoogleFonts.getFont('Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8D8989),
                      fontSize: 15,
                      fontStyle: FontStyle.normal),
                ),
              )),
          Container(

              // height: 60,
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),

              //  padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.circular(30),
                  border: Border.all(color: Color(0xffFAFAFA))),
              // border: Border.all(color: Colors.grey,width: 0.5)

              child: TextFormField(
                validator: (v) {
                  if (v!.isEmpty) {
                    return " Please Enter username..\ ";
                  }

                  return null;
                },
                controller: _dateController,
                decoration: InputDecoration(
                  hintText: 'Date of Birth (dd/mm/yyyy)',
                  contentPadding: EdgeInsets.only(left: 20),
                  border: InputBorder.none,
                  hintStyle: GoogleFonts.getFont('Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8D8989),
                      fontSize: 15,
                      fontStyle: FontStyle.normal),
                ),
              )),
          Container(
            margin: EdgeInsets.only(top: 10, left: 15, right: 15),

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Color(0xffFAFAFA))),
            // margin: EdgeInsets.only(left: 25, right: 15),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DropdownButton(
                isExpanded: true,
                underline: SizedBox(),
                // Initial Value
                value: dropdownvalue,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
          ),
          Container(

              // height: 60,
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),

              //  padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.circular(30),
                  border: Border.all(color: Color(0xffFAFAFA))),
              // border: Border.all(color: Colors.grey,width: 0.5)

              child: TextFormField(
                controller: _emailController,
                validator: (v) {
                  if (v!.isEmpty) {
                    return " Please Enter username..\ ";
                  }

                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'johndoe112@gmail.com',
                  contentPadding: EdgeInsets.only(left: 20),
                  border: InputBorder.none,
                  hintStyle: GoogleFonts.getFont('Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8D8989),
                      fontSize: 15,
                      fontStyle: FontStyle.normal),
                ),
              )),
          Container(

              // height: 60,
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),

              //  padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.circular(30),
                  border: Border.all(color: Color(0xffFAFAFA))),
              // border: Border.all(color: Colors.grey,width: 0.5)

              child: TextFormField(
                validator: (v) {
                  if (v!.isEmpty) {
                    return " Please Enter username..\ ";
                  }

                  return null;
                },
                controller: _phoneController,
                decoration: InputDecoration(
                  hintText: '+234 8032123456',
                  contentPadding: EdgeInsets.only(left: 20),
                  border: InputBorder.none,
                  hintStyle: GoogleFonts.getFont('Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8D8989),
                      fontSize: 15,
                      fontStyle: FontStyle.normal),
                ),
              )),
          Container(

              // height: 60,
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),

              //  padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.circular(30),
                  border: Border.all(color: Color(0xffFAFAFA))),
              // border: Border.all(color: Colors.grey,width: 0.5)

              child: TextFormField(
                validator: (v) {
                  if (v!.isEmpty) {
                    return " Please Enter username..\ ";
                  }

                  return null;
                },
                controller: _occupayController,
                decoration: InputDecoration(
                  hintText: 'Occupation',
                  contentPadding: EdgeInsets.only(left: 20),
                  border: InputBorder.none,
                  hintStyle: GoogleFonts.getFont('Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8D8989),
                      fontSize: 15,
                      fontStyle: FontStyle.normal),
                ),
              )),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xfff0092E1),
                  fixedSize: const Size(350, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
                onPressed: profile,
                child: _isLoading == true
                    ? const Center(
                        child: CircularProgressIndicator.adaptive(),
                      )
                    : Text(
                        'Continue',
                        style: GoogleFonts.getFont('Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 15,
                            fontStyle: FontStyle.normal),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void profile() async {
    setState(() {
      _isLoading = true;
    });
    String rse = await FirestoreMethods().uploadPosts(
        email: _emailController.text,
        firstName: _firstController.text,
        lastName: _lastController.text,
        date: _dateController.text,
        phone: _phoneController.text,
        uid: FirebaseAuth.instance.currentUser!.uid,
        occupy: _occupayController.text,
        age: dropdownvalue);

    print(rse);
    setState(() {
      _isLoading = false;
    });
    if (rse != 'sucess') {
      showSnakBar(rse, context);
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => Best_Photo()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => Best_Photo()));
    }
  }
}
