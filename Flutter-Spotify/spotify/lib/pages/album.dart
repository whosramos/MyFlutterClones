import 'package:flutter/material.dart';
import 'package:charcode/html_entity.dart';
import '../models/song.dart';
import '../theme.dart';
import '../widgets/footer.dart';

class AlbumPage extends StatelessWidget {
  final SongModel song;
  AlbumPage({
    @required this.song,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _appBar(),
      body: Container(
        decoration: radialGradGREY,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _image(context),
                  _description(),
                  _greenButton(context),
                  _pularTitle(),
                  _list(),
                  _dates(),
                  _imageRights()
                ],
              ),
            ),
            Footer(song: song)
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Color(0x282828).withOpacity(1),
      centerTitle: true,
      title: Text(
        song.name,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.favorite_border, color: Colors.white, size: 30),
            SizedBox(width: 5),
            Icon(Icons.more_vert, color: Colors.white, size: 30),
            SizedBox(width: 5),
          ],
        )
      ],
    );
  }

  _image(context) {
    double size = MediaQuery.of(context).size.width / 2.23;
    return Container(
      width: size,
      height: size,
      margin: EdgeInsets.only(top: 70),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(song.image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _description() {
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(top: 23, bottom: 10),
        child: Text(
          song.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Text(
        'Album of ${song.bandName}' + String.fromCharCode($bull) + ' 2020',
        style: TextStyle(color: Colors.white.withOpacity(0.5)),
        textAlign: TextAlign.center,
      ),
    ]);
  }

  _greenButton(context) {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50, top: 20),
      width: MediaQuery.of(context).size.width,
      height: 48,
      decoration: BoxDecoration(
        color: Color(0x1db954).withOpacity(1),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Random Order'.toUpperCase(),
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  _imageRights() {
    return Container(
      padding: EdgeInsets.only(right: 15, left: 15, top: 30, bottom: 20),
      child: Row(
        children: <Widget>[
          Flexible(
              child: Text('© ℗ 2020 The Weeknd XO, Inc.',
                  style: TextStyle(color: Colors.white, fontSize: 16.5)))
        ],
      ),
    );
  }

  _pularTitle() {
    String text3 = 'Popular releases';
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text.rich(
            TextSpan(text: text3, style: TextStyle(height: 1.2)),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }

  _dates() {
    String text1 = '20 mars 2020\n';
    String text2 = '14 titres ' + String.fromCharCode($bull) + ' 56 min 17 s\n';
    return Container(
      padding: EdgeInsets.only(left: 15, top: 15),
      child: Row(
        children: <Widget>[
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: text1),
                TextSpan(text: text2, style: TextStyle(height: 1.2)),
              ],
            ),
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }

  _list() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: song.otherSongs.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(left: 15, right: 15, bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: song.otherSongs[index][0].toString() + '\n',
                    style: TextStyle(fontSize: 15),
                  ),
                  song.otherSongs[index][1]
                      ? WidgetSpan(
                          child: Icon(
                          Icons.explicit,
                          color: Colors.white.withOpacity(0.5),
                          size: 16,
                        ))
                      : WidgetSpan(child: Container()),
                  TextSpan(
                    text: song.bandName,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      height: 1.6,
                    ),
                  )
                ]),
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.more_vert,
                size: 30,
                color: Colors.white.withOpacity(0.5),
              )
            ],
          ),
        );
      },
    );
  }
}
