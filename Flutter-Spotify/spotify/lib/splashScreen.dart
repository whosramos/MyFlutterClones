import 'dart:async';
import 'package:flutter/material.dart';
import './pages/home.dart';

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
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x000000),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image(
              height: MediaQuery.of(context).size.height * 0.25,
              image: AssetImage('assets/logo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
