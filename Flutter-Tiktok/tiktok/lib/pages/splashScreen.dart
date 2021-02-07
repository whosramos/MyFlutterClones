import 'dart:async';
import 'package:flutter/material.dart';
import '../pages/tabs.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 2000), () {
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (_) => TabsPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image(
              height: MediaQuery.of(context).size.height * 0.25,
              image: AssetImage('assets/tiktok.png'),
            ),
          ),
        ],
      ),
    );
  }
}
