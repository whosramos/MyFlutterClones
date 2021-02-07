import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp/splashScreen.dart';
import './pages/home.dart';
import './theme.dart';

List<CameraDescription> camera;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  camera = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
        primaryColor: greenOne,
        secondaryHeaderColor: greenTwo,
        highlightColor: greenThree,
        cardColor: whiteColor,
        accentColor: lightColor,
      ),
      home: SplashScreen(),
    );
  }
}
