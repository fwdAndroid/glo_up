
import 'package:flutter/material.dart';
import 'package:glo_up/Screens/authphone/verifyphone.dart';
import 'package:glo_up/Screens/groupbutton/brand_select_screen.dart';

class SelectInterest extends StatefulWidget {
  const SelectInterest({Key? key}) : super(key: key);

  @override
  State<SelectInterest> createState() => _SelectInterestState();
}

class _SelectInterestState extends State<SelectInterest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (builder) => VerifyPhone()));
            },
            icon: Icon(Icons.arrow_back, color: Color(0xfffc6179))),
        title: Text(
          'Select Your Interest',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Select your interests to match with users who have similar things in commmon',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                SingleChildScrollView(child: BrandSelectScreen())
                // SizedBox(height: 600, child: LikesandInterest())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
