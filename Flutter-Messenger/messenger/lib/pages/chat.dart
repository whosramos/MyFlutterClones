import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../models/message.dart';
import '../widgets/chatBubble.dart';
import '../theme.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController _sendMessageController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: getBody(),
      bottomSheet: getBottom(),
    );
  }

  AppBar _appBar() {
    String image =
        "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
    return AppBar(
      backgroundColor: grey.withOpacity(0.2),
      elevation: 0,
      leading: FlatButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back_ios, color: primary, size: 20),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Tyler Nix",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: black),
              ),
              SizedBox(height: 3),
              Text(
                "Active now",
                style: TextStyle(color: black.withOpacity(0.4), fontSize: 14),
              )
            ],
          )
        ],
      ),
      actions: <Widget>[
        Icon(LineIcons.phone, color: primary, size: 25),
        SizedBox(width: 15),
        Icon(LineIcons.video_camera, color: primary, size: 25),
        SizedBox(width: 8),
        Container(
          width: 13,
          height: 13,
          decoration: BoxDecoration(
              color: online,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white38)),
        ),
        SizedBox(width: 15),
      ],
    );
  }

  Widget getBottom() {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(color: grey.withOpacity(0.2)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: (MediaQuery.of(context).size.width - 40) / 2,
              child: Row(
                children: <Widget>[
                  Icon(Icons.add_circle, size: 22, color: primary),
                  SizedBox(width: 8),
                  Icon(Icons.camera_alt, size: 22, color: primary),
                  SizedBox(width: 8),
                  Icon(Icons.photo, size: 22, color: primary),
                  SizedBox(width: 8),
                  Icon(Icons.keyboard_voice, size: 22, color: primary),
                ],
              ),
            ),
            Container(
              width: (MediaQuery.of(context).size.width - 40) / 2,
              child: Row(
                children: <Widget>[
                  Container(
                    width: (MediaQuery.of(context).size.width - 140) / 2,
                    height: 40,
                    decoration: BoxDecoration(
                        color: grey, borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: TextField(
                        cursorColor: black,
                        controller: _sendMessageController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Aa",
                          suffixIcon:
                              Icon(Icons.face, color: primary, size: 22),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Icon(Icons.thumb_up, size: 22, color: primary),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    return ListView(
      padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 80),
      children: List.generate(messages.length, (index) {
        return Padding(
          padding: EdgeInsets.only(top: 10),
          child: ChatBubble(
            isMe: messages[index].isMe,
            messageType: messages[index].messageType,
            message: messages[index].message,
            profileImg: messages[index].profileImg,
          ),
        );
      }),
    );
  }
}
