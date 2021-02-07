import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/theme.dart';
import '../models/chat.dart';
import '../models/message.dart';

class ChattingPage extends StatefulWidget {
  final ChatModel user;
  ChattingPage({
    @required this.user,
  });

  @override
  _ChattingPagestate createState() => _ChattingPagestate();
}

class _ChattingPagestate extends State<ChattingPage> {
  TextEditingController _messageController;

  @override
  void initState() {
    super.initState();
    _messageController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: _appBar(),
      body: Column(
        children: <Widget>[_chatBubble(), _sendMessage()],
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0.0,
      actions: <Widget>[
        IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
        IconButton(icon: Icon(Icons.call), onPressed: () {}),
        IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.0),
            ),
            width: MediaQuery.of(context).size.width * 0.23,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Container(
                  child: CircleAvatar(
                    radius: 16.0,
                    backgroundImage: AssetImage(
                      widget.user.imageURL,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(2, 0.0, 0.0, 0.0),
              margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
              child: Text(
                widget.user.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _chatBubble() {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Expanded(
      flex: 12,
      child: Padding(
        padding: EdgeInsets.only(left: w * 0.04, right: w * 0.04),
        child: ListView.builder(
          itemCount: msgs.length,
          reverse: true,
          itemBuilder: (context, index) {
            return msgs[index].isMe
                ? Bubble(
                    margin: BubbleEdges.only(
                      top: (index < msgs.length - 1 && msgs[index + 1].isMe)
                          ? h * 0.02
                          : h * 0.05,
                      left: w * 0.1,
                      bottom: index == 0 ? h * 0.08 : h * 0,
                    ),
                    nip: (index < msgs.length - 2 && msgs[index + 1].isMe)
                        ? BubbleNip.no
                        : BubbleNip.rightTop,
                    color: Color.fromRGBO(225, 255, 199, 1.0),
                    nipHeight: h * 0.02,
                    alignment: Alignment.centerRight,
                    elevation: 0.4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(msgs[index].msg),
                        SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              msgs[index].time,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.check,
                              color: msgs[index].seen ? greenOne : Colors.grey,
                              size: 15,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                : Bubble(
                    margin: BubbleEdges.only(
                      top: (index < msgs.length - 2 && msgs[index + 1].isMe)
                          ? h * 0.02
                          : h * 0.05,
                      right: w * 0.1,
                    ),
                    nip: (index < msgs.length - 1 && msgs[index + 1].isMe)
                        ? BubbleNip.leftTop
                        : BubbleNip.no,
                    nipHeight: h * 0.02,
                    alignment: Alignment.centerLeft,
                    elevation: 0.4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(msgs[index].msg),
                        SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              msgs[index].time,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }

  Widget _sendMessage() {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(bottom: h * 0.02),
      height: h * 0.1,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: w * 0.02,
          vertical: h * 0,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 15,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: TextField(
                    controller: _messageController,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border: InputBorder.none,
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.attachment, color: Colors.grey),
                            SizedBox(width: 10),
                            Icon(Icons.camera_alt, color: Colors.grey),
                          ],
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.sentiment_satisfied,
                        size: 24,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              flex: 2,
              child: Container(
                height: h * 0.06,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Center(
                  child: Icon(
                    Icons.send,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
