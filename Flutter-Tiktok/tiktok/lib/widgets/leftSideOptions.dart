import 'package:flutter/material.dart';
import '../theme.dart';

class LeftSideOptions extends StatelessWidget {
  final String name;
  final String caption;
  final String songName;
  const LeftSideOptions({
    @required this.size,
    this.name,
    this.caption,
    this.songName,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.7,
      height: size.height,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
              color: whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          Text(caption, style: TextStyle(color: whiteColor)),
          SizedBox(height: 5),
          Row(
            children: <Widget>[
              Icon(Icons.music_note, color: whiteColor, size: 15),
              Flexible(
                child: Text(
                  songName,
                  style: TextStyle(color: whiteColor, height: 1.5),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
