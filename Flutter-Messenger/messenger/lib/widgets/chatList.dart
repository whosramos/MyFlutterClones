import 'package:flutter/material.dart';
import '../models/user.dart';
import '../pages/chat.dart';
import '../theme.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: List.generate(userMessages.length, (index) {
          return InkWell(
            onTap: () => _go(context),
            child: _cardMessage(userMessages[index], context),
          );
        }),
      ),
    );
  }

  Future<dynamic> _go(context) {
    return Navigator.push(context, MaterialPageRoute(builder: (_) {
      return ChatPage();
    }));
  }

  Widget _cardMessage(UserModel message, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            child: Stack(
              children: <Widget>[
                message.story
                    ? Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: blue_story,
                            width: 3,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(message.img),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(message.img),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                message.online
                    ? Positioned(
                        top: 55,
                        left: 52,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: online,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: white,
                              width: 3,
                            ),
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                message.name,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width - 135,
                child: Text(
                  message.message + " - " + message.created_at,
                  style: TextStyle(fontSize: 15, color: black.withOpacity(0.8)),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
