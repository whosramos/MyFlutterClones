import 'package:flutter/material.dart';
import 'package:spotify/models/song.dart';
import 'package:spotify/theme.dart';
import 'package:spotify/widgets/line.dart';
import 'dart:math' as math;

class MusicPage extends StatelessWidget {
  final SongModel song;
  MusicPage({
    @required this.song,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: radialGradGREY,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _headerMusic(context),
            _image(),
            _desc(),
            _playLine(),
            _playIcons(),
          ],
        ),
      ),
    );
  }

  _headerMusic(context) {
    return Padding(
        padding: EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Transform.rotate(
              angle: 45 * math.pi / 90,
              child: IconButton(
                icon: Icon(Icons.arrow_forward_ios,
                    size: 30, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Text.rich(
              TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "Play from album\n".toUpperCase(),
                    style: TextStyle(fontSize: 12)),
                TextSpan(
                    text: song.name,
                    style: TextStyle(fontWeight: FontWeight.bold))
              ]),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Icon(Icons.more_vert, size: 30, color: Colors.white)
          ],
        ));
  }

  _image() {
    return Container(
      height: 298,
      margin: EdgeInsets.only(left: 32, right: 32, top: 30),
      decoration: BoxDecoration(
        color: Colors.grey[400].withOpacity(0.81),
        image: DecorationImage(
          image: NetworkImage(song.image),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

  _desc() {
    return Padding(
      padding: EdgeInsets.only(left: 32, right: 32, top: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text.rich(
            TextSpan(children: <TextSpan>[
              TextSpan(
                text: "${song.name}\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              TextSpan(
                text: '${song.bandName}',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                ),
              )
            ]),
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.favorite_border,
            size: 28,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  _playLine() {
    return Container(
      padding: EdgeInsets.only(left: 32, right: 32, top: 21),
      child: Column(
        children: <Widget>[
          CustomPaint(
            painter: MyProgressLine(),
            child: Container(
              width: double.infinity,
              height: 3,
              padding: EdgeInsets.all(0),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '2:40',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 12),
                  ),
                  Text(
                    song.songLength,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 12),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  _playIcons() {
    return Column(children: [
      Container(
        padding: EdgeInsets.only(left: 32, right: 32, top: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.shuffle, size: 25, color: Colors.white),
            Icon(Icons.skip_previous, size: 45, color: Colors.white),
            Icon(Icons.play_circle_filled, size: 70, color: Colors.white),
            Icon(Icons.skip_next, size: 45, color: Colors.white),
            Icon(Icons.repeat, size: 25, color: Colors.white),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 32, right: 32, top: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.speaker, size: 15, color: Colors.white),
            Icon(Icons.queue, size: 15, color: Colors.white)
          ],
        ),
      )
    ]);
  }
}
