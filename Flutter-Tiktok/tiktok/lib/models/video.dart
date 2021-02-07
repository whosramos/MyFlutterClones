import 'package:flutter/cupertino.dart';

class VideoModel {
  String videoUrl;
  String name;
  String caption;
  String songName;
  String profileImg;
  String likes;
  String comments;
  String shares;
  String albumImg;

  VideoModel({
    @required this.videoUrl,
    @required this.name,
    @required this.caption,
    @required this.songName,
    @required this.profileImg,
    @required this.likes,
    @required this.comments,
    @required this.shares,
    @required this.albumImg,
  });
}

List<VideoModel> items = [
  VideoModel(
    videoUrl: "assets/videos/video_1.mp4",
    name: "@winderssonnunes",
    caption: "how the Tiktok dance step was born",
    songName: "original song",
    profileImg: "assets/images/01.jpg",
    likes: "1.5M",
    comments: "18.9K",
    shares: "80K",
    albumImg: "assets/images/01.jpg",
  ),
  VideoModel(
    videoUrl: "assets/videos/video_2.mp4",
    name: "@luizmariz",
    caption: "this girl is very beautiful, so in love",
    songName: "original song",
    profileImg: "assets/images/02.jpg",
    likes: "4.4K",
    comments: "5.2K",
    shares: "100",
    albumImg: "assets/images/02.jpg",
  ),
];
