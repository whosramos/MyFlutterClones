import 'package:flutter/material.dart';
import 'package:spotify/splashScreen.dart';
import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Gotham'),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
