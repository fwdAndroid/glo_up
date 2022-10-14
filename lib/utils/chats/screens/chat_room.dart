import '../app_theme.dart';
import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../widgets/widgets.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key, required this.user}) : super(key: key);

  @override
  _ChatRoomState createState() => _ChatRoomState();
  final User user;
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            Expanded(
                flex: 0,
                child: Image.asset(
                  "asset/Rectangle 10.png",
                  height: 30,
                  width: 30,
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Text(
                'Jane Cooper',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: Colors.black),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "asset/camera.png",
                width: 20,
                height: 12,
              ))
        ],
      ),
      backgroundColor: MyTheme.kPrimaryColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Conversation(user: widget.user),
                ),
              ),
            ),
            buildChatComposer()
          ],
        ),
      ),
    );
  }
}
