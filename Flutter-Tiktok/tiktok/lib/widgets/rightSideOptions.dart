import 'package:flutter/material.dart';
import '../theme.dart';
import 'tik_tok_icons.dart';
import 'dart:math' as math;

class RightSideOptions extends StatefulWidget {
  final String likes;
  final String comments;
  final String shares;
  final String profileImg;
  final String albumImg;
  final Size size;
  RightSideOptions({
    @required this.size,
    this.likes,
    this.comments,
    this.shares,
    this.profileImg,
    this.albumImg,
  });

  @override
  _RightSideOptionsState createState() => _RightSideOptionsState();
}

class _RightSideOptionsState extends State<RightSideOptions>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 5));
    animationController.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: widget.size.height,
        child: Column(
          children: <Widget>[
            Container(height: widget.size.height * 0.3),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  getProfile(widget.profileImg),
                  getIcons(TikTokIcons.heart, widget.likes, 35.0),
                  getIcons(TikTokIcons.chat_bubble, widget.comments, 35.0),
                  getIcons(TikTokIcons.reply, widget.shares, 25.0),
                  getAlbum(widget.albumImg)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getAlbum(albumImg) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.only(right: 10),
      child: Stack(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: blackColor,
            ),
          ),
          AnimatedBuilder(
            animation: animationController,
            builder: (context, _widget) {
              return Transform.rotate(
                angle: animationController.value * 6.3,
                child: _widget,
              );
            },
            child: Center(
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(albumImg),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getIcons(icon, count, size) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(icon, color: whiteColor, size: size),
          SizedBox(height: 5),
          Text(
            count,
            style: TextStyle(
              color: whiteColor,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }

  Widget getProfile(img) {
    return Container(
      width: 50,
      height: 60,
      child: Stack(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: whiteColor),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 3,
            left: 18,
            child: Container(
              width: 20,
              height: 20,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: primaryColor),
              child:
                  Center(child: Icon(Icons.add, color: whiteColor, size: 15)),
            ),
          )
        ],
      ),
    );
  }
}
