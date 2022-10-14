import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Heart extends StatelessWidget {
  const Heart({Key? key}) : super(key: key);
  zisttile(String text, IconData? icon, VoidCallback function) {
    return ListTile(
        leading: Container(
          width: 40,
          height: 40,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon!,
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
        ),
        trailing: IconButton(
          onPressed: function,
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 130,
                // width: MediaQuery.of(context).size.width * 0.9,
                // width: 100,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('asset/Rectangle 10.png'),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Image.asset("asset/cad.png"),
            SizedBox(
              height: 30,
            ),
            // ListTile()
            zisttile('Settings', Icons.settings, () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (builder) => Edit_Heart()));
            }),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              indent: 15,
              endIndent: 15,
            ),

            zisttile('Invite Friends', Icons.people, () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (builder) => Invite_Friends()));
            }),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              indent: 15,
              endIndent: 15,
            ),
            zisttile('Help Center', Icons.info, () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (builder) => Invite_Friends()));
            }),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              indent: 15,
              endIndent: 15,
            ),
            ListTile(
              leading: Icon(
                Icons.login_outlined,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
