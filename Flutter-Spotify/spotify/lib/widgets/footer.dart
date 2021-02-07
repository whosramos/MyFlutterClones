import 'package:flutter/material.dart';
import '../models/song.dart';
import '../widgets/animation.dart';
import 'package:charcode/html_entity.dart';

class Footer extends StatelessWidget {
  final SongModel song;
  Footer({
    @required this.song,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[_listenSong(context)],
    );
  }

  Widget _listenSong(context) {
    LinearProgressIndicator line = LinearProgressIndicator(
      backgroundColor: Colors.transparent,
      value: 0.4,
      valueColor: new AlwaysStoppedAnimation<Color>(
        Colors.white70.withOpacity(0.8),
      ),
    );
    String bandName = ' ' + String.fromCharCode($bull) + ' ${song.bandName}';
    return Container(
      color: Color(0x282828).withOpacity(1),
      child: Column(
        children: <Widget>[
          Container(height: 1.5, child: line),
          FlatButton(
            onPressed: () {
              return Navigator.of(context).push(
                createRoute("MusicPage", song),
              );
            },
            padding: EdgeInsets.all(0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 62,
                  width: 62,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(song.image),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width - 150,
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: song.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: bandName,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Icon(Icons.favorite_border, size: 30, color: Colors.white),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 15),
                  child: Icon(
                    Icons.pause,
                    size: 30,
                    color: Colors.white,
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
