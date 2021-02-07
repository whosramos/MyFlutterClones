import 'package:flutter/material.dart';
import '../widgets/rightSideOptions.dart';
import 'package:video_player/video_player.dart';
import '../theme.dart';
import 'leftSideOptions.dart';

class VideoPlayerItem extends StatefulWidget {
  final String videoUrl;
  final String name;
  final String caption;
  final String songName;
  final String profileImg;
  final String likes;
  final String comments;
  final String shares;
  final String albumImg;
  VideoPlayerItem({
    @required this.size,
    this.name,
    this.caption,
    this.songName,
    this.profileImg,
    this.likes,
    this.comments,
    this.shares,
    this.albumImg,
    this.videoUrl,
  });

  final Size size;

  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  VideoPlayerController _videoController;
  bool isShowPlaying = false;

  @override
  void initState() {
    super.initState();

    _videoController = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((value) {
        _videoController.play();
        setState(() {
          isShowPlaying = false;
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _videoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _videoController.value.isPlaying
              ? _videoController.pause()
              : _videoController.play();
        });
      },
      child: RotatedBox(
        quarterTurns: -1,
        child: Container(
            height: widget.size.height,
            width: widget.size.width,
            child: Stack(
              children: <Widget>[
                Container(
                  height: widget.size.height,
                  width: widget.size.width,
                  decoration: BoxDecoration(color: blackColor),
                  child: Stack(
                    children: <Widget>[
                      VideoPlayer(_videoController),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(),
                          child: isPlaying(),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: widget.size.height,
                  width: widget.size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 20,
                      bottom: 10,
                    ),
                    child: SafeArea(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[_header(), _details()],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }

  Widget isPlaying() {
    return _videoController.value.isPlaying && !isShowPlaying
        ? Container()
        : Icon(
            Icons.play_arrow,
            size: 80,
            color: whiteColor.withOpacity(0.5),
          );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Following",
          style: TextStyle(
            color: whiteColor.withOpacity(0.7),
            fontSize: 16,
          ),
        ),
        SizedBox(width: 8),
        Text(
          "|",
          style: TextStyle(
            color: whiteColor.withOpacity(0.3),
            fontSize: 17,
          ),
        ),
        SizedBox(width: 8),
        Text(
          "For You",
          style: TextStyle(
            color: whiteColor,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  Widget _details() {
    return Expanded(
      child: Row(
        children: <Widget>[
          LeftSideOptions(
            size: widget.size,
            name: "${widget.name}",
            caption: "${widget.caption}",
            songName: "${widget.songName}",
          ),
          RightSideOptions(
            size: widget.size,
            likes: "${widget.likes}",
            comments: "${widget.comments}",
            shares: "${widget.shares}",
            profileImg: "${widget.profileImg}",
            albumImg: "${widget.albumImg}",
          )
        ],
      ),
    );
  }
}
