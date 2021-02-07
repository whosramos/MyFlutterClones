import 'package:flutter/material.dart';
import './../pages/story.dart';
import '../models/chat.dart';

class StatusPage extends StatefulWidget {
  @override
  _Statuspagestate createState() => _Statuspagestate();
}

class _Statuspagestate extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[_myStatus(), _title(), _listStatus()],
    );
  }

  Widget _myStatus() {
    return GestureDetector(
      onTap: () {
        return Navigator.push(
            context, MaterialPageRoute(builder: (_) => StoryPage()));
      },
      child: ListTile(
        title: Text(
          "My status",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: MediaQuery.of(context).size.height * 0.025,
          ),
        ),
        subtitle: Text(
          'Today , 10:02 am',
          style: TextStyle(
            color: Colors.grey,
            fontSize: MediaQuery.of(context).size.height * 0.02,
          ),
        ),
        leading: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                width: 3.0,
                color: Theme.of(context).secondaryHeaderColor,
              )),
          child: Container(
            child: CircleAvatar(
              radius: 24.0,
              backgroundImage: AssetImage('assets/images/chris.jpg'),
            ),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Container(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.025,
        right: MediaQuery.of(context).size.width * 0.025,
      ),
      height: MediaQuery.of(context).size.height * 0.06,
      color: Colors.grey.shade300,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Viewed updates",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
        ),
      ),
    );
  }

  Widget _listStatus() {
    return GestureDetector(
      onTap: () {
        return Navigator.push(
            context, MaterialPageRoute(builder: (_) => StoryPage()));
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.pink,
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 255, 255, 0.6),
              Color.fromRGBO(255, 255, 255, 0.6)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
          ),
        ),
        child: ListBody(
          children: List.generate(3, (index) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        peopleList[index].name,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10)
                    ],
                  ),
                  subtitle: Text(
                    "Today, 12:56PM",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                  leading: Container(
                    child: CircleAvatar(
                      radius: 24.0,
                      backgroundImage: AssetImage(peopleList[index].imageURL),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.02),
                  child: Divider(
                      height: 1.0,
                      indent: MediaQuery.of(context).size.height * 0.11),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
