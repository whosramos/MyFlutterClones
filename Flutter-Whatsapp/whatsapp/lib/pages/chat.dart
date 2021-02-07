import 'package:flutter/material.dart';
import '../models/chat.dart';
import 'chatting.dart';

class ChatPage extends StatefulWidget {
  @override
  _Chatpagestate createState() => _Chatpagestate();
}

class _Chatpagestate extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(peopleList.length, (index) {
        return GestureDetector(
          onTap: () {
            return Navigator.push(context, MaterialPageRoute(builder: (_) {
              return ChattingPage(user: peopleList[index]);
            }));
          },
          child: Column(
            children: <Widget>[
              ListTile(
                title: _content(
                  peopleList[index].name,
                  peopleList[index].time,
                ),
                subtitle: _message(peopleList[index].message),
                leading: _photo(peopleList[index].imageURL),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.02),
                child: Divider(
                    height: 1.0,
                    indent: MediaQuery.of(context).size.height * 0.11),
              )
            ],
          ),
        );
      }),
    );
  }

  Widget _photo(image) {
    return Container(
      child: CircleAvatar(
        radius: 24.0,
        backgroundImage: AssetImage(image),
      ),
    );
  }

  Widget _message(message) {
    return Container(
      child: Text(
        message,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w400,
          fontSize: MediaQuery.of(context).size.height * 0.02,
        ),
      ),
    );
  }

  Widget _content(name, time) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Text(
                name,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              time,
              style: TextStyle(
                color: Colors.grey,
                fontSize: MediaQuery.of(context).size.height * 0.015,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        SizedBox(height: 5)
      ],
    );
  }
}
