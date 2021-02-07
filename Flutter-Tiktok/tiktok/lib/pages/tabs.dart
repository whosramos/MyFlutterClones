import 'package:flutter/material.dart';
import '../pages/home.dart';
import '../theme.dart';
import '../widgets/tik_tok_icons.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int pageIndex = 0;
  List bottomItems = [
    {"icon": TikTokIcons.home, "label": "Home", "isIcon": true},
    {"icon": TikTokIcons.search, "label": "Discover", "isIcon": true},
    {"icon": "", "label": "", "isIcon": false},
    {"icon": TikTokIcons.messages, "label": "Inbox", "isIcon": true},
    {"icon": TikTokIcons.profile, "label": "Me", "isIcon": true}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: <Widget>[
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(color: appColor),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(bottomItems.length, (index) {
              return bottomItems[index]['isIcon']
                  ? _tabButton(index)
                  : _tikTokButton(index);
            }),
          ),
        ),
      ),
    );
  }

  Widget _tabButton(index) {
    return InkWell(
      onTap: () {
        setState(() => pageIndex = index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(bottomItems[index]['icon'], color: whiteColor),
          SizedBox(height: 5),
          Center(
            child: Text(
              bottomItems[index]['label'],
              style: TextStyle(color: whiteColor, fontSize: 10),
            ),
          )
        ],
      ),
    );
  }

  _tikTokButton(index) {
    return InkWell(
      onTap: () => setState(() => pageIndex = index),
      child: Container(
        width: 50,
        height: 35,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              child: Container(
                width: 40,
                height: 35,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                width: 40,
                height: 35,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Positioned(
              right: 5,
              child: Container(
                width: 40,
                height: 35,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
