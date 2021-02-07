import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../models/story.dart';
import '../theme.dart';

class StoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          _myself(),
          Row(
            children: List.generate(userStories.length, (index) {
              return _avatarsUsers(userStories[index]);
            }),
          )
        ],
      ),
    );
  }

  _myself() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(shape: BoxShape.circle, color: grey),
            child: Center(
              child: Icon(LineIcons.plus, size: 26),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 75,
            child: Align(
              child: Text(
                'Your Story',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _avatarsUsers(StoryModel users) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: <Widget>[
          Container(
            width: 65,
            height: 65,
            child: Stack(
              children: <Widget>[
                users.story
                    ? Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: blue_story, width: 3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(users.img),
                                  fit: BoxFit.cover),
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
                            image: NetworkImage(users.img),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                users.online
                    ? Positioned(
                        top: 48,
                        left: 38,
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
          SizedBox(height: 10),
          SizedBox(
            width: 75,
            child: Align(
              child: Text(
                users.name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13),
              ),
            ),
          )
        ],
      ),
    );
  }
}
