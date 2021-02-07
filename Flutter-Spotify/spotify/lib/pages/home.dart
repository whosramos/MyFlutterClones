import 'package:flutter/material.dart';
import '../models/song.dart';
import '../widgets/animation.dart';
import '../theme.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          top: true,
          bottom: false,
          child: TabBarView(children: [
            _content(),
            _content(),
            _content(),
          ]),
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home), text: "Home"),
            Tab(icon: Icon(Icons.search), text: "Search"),
            Tab(icon: Icon(Icons.library_music), text: "Library"),
          ],
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white.withOpacity(0.5),
          indicatorColor: Color(0xffffffff).withOpacity(.0),
          labelStyle: TextStyle(fontSize: 12, fontFamily: fontSpotify),
        ),
      ),
    );
  }

  _content() {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _header(),
              _title('Good morning'),
              _grid(),
              _title('Recently played'),
              _recentlyPlayedList(),
              _title('Made for you'),
              _songsList(),
              _title(' Latest popular releases '),
              _songsList()
            ],
          ),
        ),
        Footer(song: theWeeknd)
      ],
    );
  }

  _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20, top: 15),
          child: Icon(
            Icons.settings,
            color: Colors.white,
            size: 30,
          ),
        )
      ],
    );
  }

  _title(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 15, top: 20),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: fontSpotify,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  _grid() {
    return GridView.builder(
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 155 / 60,
      ),
      shrinkWrap: true,
      primary: false,
      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
      itemCount: songs.length,
      itemBuilder: (BuildContext context, int index) {
        SongModel _s = songs[index];
        return Card(
          color: Color(0x2a2a2a).withOpacity(0.9),
          child: FlatButton(
            onPressed: () {
              return Navigator.of(context).push(
                createRoute("AlbumPage", songs[index]),
              );
            },
            padding: EdgeInsets.all(0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 56,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(_s.image),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8),
                    width: MediaQuery.of(context).size.width / 4,
                    child: Text(
                      _s.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: fontSpotify,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _recentlyPlayedList() {
    return Container(
      height: 180,
      padding: EdgeInsets.only(top: 20),
      child: ListView.builder(
        padding: EdgeInsets.only(left: 15),
        shrinkWrap: false,
        primary: true,
        scrollDirection: Axis.horizontal,
        itemCount: songs.length,
        itemBuilder: (BuildContext context, int index) {
          SongModel _s = songs[index];
          return GestureDetector(
              onTap: () {
                return Navigator.of(context).push(
                  createRoute("MusicPage", songs[index]),
                );
              },
              child: Container(
                color: Colors.transparent,
                margin: EdgeInsets.only(right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 112,
                      width: 112,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(_s.image),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        _s.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: fontSpotify,
                        ),
                      ),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }

  _songsList() {
    return Container(
      height: 222,
      padding: EdgeInsets.only(top: 20),
      child: ListView.builder(
        padding: EdgeInsets.only(left: 15),
        shrinkWrap: false,
        primary: true,
        scrollDirection: Axis.horizontal,
        itemCount: songs.length,
        itemBuilder: (BuildContext context, int index) {
          SongModel _s = songs[index];
          return GestureDetector(
            onTap: () {
              return Navigator.of(context).push(
                createRoute("MusicPage", songs[index]),
              );
            },
            child: Container(
              color: Colors.transparent,
              margin: EdgeInsets.only(right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(_s.image),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      _s.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: fontSpotify,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      _s.bandName,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                        fontFamily: fontSpotify,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
