import 'package:flutter/material.dart';
import '../models/song.dart';
import '../pages/album.dart';
import '../pages/music.dart';

Route createRoute(String page, SongModel song) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      if (page == "MusicPage") {
        return MusicPage(song: song);
      } else {
        return AlbumPage(song: song);
      }
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}
