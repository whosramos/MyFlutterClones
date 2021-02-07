import 'package:flutter/material.dart';
import '../widgets/chatList.dart';
import '../widgets/header.dart';
import '../widgets/searchbox.dart';
import '../widgets/storyList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 15),
          children: <Widget>[
            Header(title: "Chats"),
            SizedBox(height: 20),
            SearchBox(searchController: _searchController),
            SizedBox(height: 20),
            StoryList(),
            SizedBox(height: 20),
            ChatList()
          ],
        ),
      ),
    );
  }
}
