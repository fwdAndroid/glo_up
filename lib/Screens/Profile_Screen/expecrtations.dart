import 'package:flutter/material.dart';
import 'package:glo_up/BottomNavigatonBar/bottomnavigation.dart';

class Expectations extends StatefulWidget {
  const Expectations({Key? key}) : super(key: key);

  @override
  State<Expectations> createState() => _ExpectationsState();
}

class _ExpectationsState extends State<Expectations> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.grey;
      }
      return Colors.grey;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Expectations',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: TextStyle(color: Color(0xffD6D6D6), fontSize: 18),
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'What are you hoping to find on the Glo up Dating \napp?',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
                height: 45,
                width: 331,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Center(
                  child: Text(
                    'Relationship',
                    style: TextStyle(
                        color: Colors.pink[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                )),
          ),
          SizedBox(height: 20),
          sexuality('Something casual'),
          SizedBox(height: 20),
          sexuality('Friends'),
          SizedBox(height: 20),
          sexuality('Marriage'),
          SizedBox(height: 20),
          sexuality('Don’t know yet'),
          SizedBox(height: 20),
          Spacer(),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => MobileScreenLayout()));
                  },
                  child: Text('CONTINUE'),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: Color(0xfff0092E1),
                      fixedSize: Size(260, 50))),
            ),
          ),
        ],
      ),
    );
  }

  Center sexuality(String text) {
    return Center(
      child: Container(
          height: 45,
          width: 331,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          )),
    );
  }
}
