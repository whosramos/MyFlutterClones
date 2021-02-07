import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import '../models/chat.dart';
import '../theme.dart';
import '../main.dart';

class CameraPage extends StatefulWidget {
  @override
  _Camerapagestate createState() => _Camerapagestate();
}

class _Camerapagestate extends State<CameraPage> {
  CameraController _cameraController;

  @override
  void initState() {
    super.initState();
    _cameraController = CameraController(camera[0], ResolutionPreset.medium);
    _cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      } else {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_cameraController.value.isInitialized) {
      return Center(child: Container());
    } else {
      return Scaffold(
        body: Stack(
          // alignment: Alignment(0, 1),
          children: [
            CameraPreview(_cameraController),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.keyboard_arrow_up, color: Colors.white),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        peopleList.length,
                        (index) {
                          return Container(
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(peopleList[index].imageURL),
                            ),
                            width: 70.0,
                            margin: EdgeInsets.all(4),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.flash_off),
                          onPressed: () {}),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: ShapeDecoration(
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.camera_alt),
                          onPressed: () {}),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 50,
                    color: Colors.black,
                    child: Align(
                      child: Text(
                        "Hold for video, tap for photo",
                        style: TextStyle(color: whiteColor),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
  }
}
