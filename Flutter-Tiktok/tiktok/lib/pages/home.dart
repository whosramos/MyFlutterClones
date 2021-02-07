import 'package:flutter/material.dart';
import '../widgets/videoPlayer.dart';
import '../models/video.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: items.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: TabBarView(
        controller: _tabController,
        children: List.generate(items.length, (index) {
          return VideoPlayerItem(
            videoUrl: items[index].videoUrl,
            size: MediaQuery.of(context).size,
            name: items[index].name,
            caption: items[index].caption,
            songName: items[index].songName,
            profileImg: items[index].profileImg,
            likes: items[index].likes,
            comments: items[index].comments,
            shares: items[index].shares,
            albumImg: items[index].albumImg,
          );
        }),
      ),
    );
  }
}
