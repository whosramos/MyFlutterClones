import 'package:flutter/material.dart';
import '../theme.dart';
import 'calls.dart';
import 'camera.dart';
import 'chat.dart';
import 'status.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Text("WhatsApp"),
        actions: <Widget>[
          Icon(Icons.search),
          SizedBox(width: 15),
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(child: Text("New Group")),
              PopupMenuItem(child: Text("New Broadcast")),
              PopupMenuItem(child: Text("Whatsapp Web")),
              PopupMenuItem(child: Text("Starred messages")),
              PopupMenuItem(child: Text("Settings")),
            ];
          }),
          SizedBox(width: 15),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.white,
          tabs: [
            _tabCamera(),
            _tabName("CHATS", false, true),
            _tabName("STATUS", true, true),
            _tabName("CALLS", false, false),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraPage(),
          ChatPage(),
          StatusPage(),
          CallsPage(),
        ],
      ),
      floatingActionButton: _fab(_tabController.index),
    );
  }

  Widget _tabName(String name, bool newStatus, bool newMessage) {
    Widget ans;
    if (newStatus == true) {
      ans = Row(children: [
        Text(
          name,
          textAlign: TextAlign.center,
        ),
        SizedBox(width: 5),
        Icon(Icons.brightness_1, size: 9)
      ]);
    } else if (newMessage == true) {
      ans = Row(children: [
        Text(
          name,
          textAlign: TextAlign.center,
        ),
        SizedBox(width: 5),
        Container(
            width: 20,
            child: CircleAvatar(
              backgroundColor: whiteColor,
              child: Text(
                "3",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ))
      ]);
    } else {
      ans = Text(name);
    }
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width / 5,
      child: ans,
    );
  }

  Widget _tabCamera() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.0125,
      ),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.height * 0.04,
      child: Center(
        child: Icon(Icons.camera_alt,
            size: MediaQuery.of(context).size.height * 0.035),
      ),
    );
  }

  Widget _fab(int index) {
    if (index == 1) {
      return FloatingActionButton(
        heroTag: 'calls',
        onPressed: () {},
        child: Icon(Icons.message, color: Colors.white),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      );
    } else if (index == 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'edit',
            onPressed: () {},
            mini: true,
            child: Icon(Icons.create, color: Theme.of(context).primaryColor),
            backgroundColor: Theme.of(context).accentColor,
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'camera',
            onPressed: () {},
            child: Icon(Icons.add_a_photo, color: Colors.white),
            backgroundColor: Theme.of(context).secondaryHeaderColor,
          ),
        ],
      );
    } else {
      return FloatingActionButton(
        heroTag: 'phone',
        onPressed: () {},
        child: Icon(Icons.add_call, color: Colors.white),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      );
    }
  }
}
