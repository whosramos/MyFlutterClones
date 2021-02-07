import 'package:flutter/material.dart';
import '../models/story.dart';
import 'package:story_view/story_view.dart';

class StoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryViewDelegate(stories: stories),
    );
  }
}

class StoryViewDelegate extends StatefulWidget {
  final List<StoryModel> stories;

  StoryViewDelegate({this.stories});

  @override
  _StoryViewDelegateState createState() => _StoryViewDelegateState();
}

class _StoryViewDelegateState extends State<StoryViewDelegate> {
  final StoryController controller = StoryController();
  List<StoryItem> storyItems = [];

  String when = "";

  @override
  void initState() {
    super.initState();
    widget.stories.forEach((story) {
      if (story.mediaType == MediaType.text) {
        storyItems.add(
          StoryItem.text(
            title: story.caption,
            backgroundColor: Color(int.parse(story.color)),
            duration: Duration(
              milliseconds: (story.duration * 1000).toInt(),
            ),
          ),
        );
      }

      if (story.mediaType == MediaType.image) {
        storyItems.add(StoryItem.pageImage(
          url: story.media,
          controller: controller,
          caption: story.caption,
          duration: Duration(
            milliseconds: (story.duration * 1000).toInt(),
          ),
        ));
      }

      if (story.mediaType == MediaType.video) {
        storyItems.add(
          StoryItem.pageVideo(
            story.media,
            controller: controller,
            duration: Duration(milliseconds: (story.duration * 1000).toInt()),
            caption: story.caption,
          ),
        );
      }
    });

    when = widget.stories[0].when;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        StoryView(
          storyItems: storyItems,
          controller: controller,
          onComplete: () {
            Navigator.of(context).pop();
          },
          onVerticalSwipeComplete: (v) {
            if (v == Direction.down) {
              Navigator.pop(context);
            }
          },
          onStoryShow: (storyItem) {
            int pos = storyItems.indexOf(storyItem);
            if (pos > 0) {
              setState(() {
                when = widget.stories[pos].when;
              });
            }
          },
        ),
        Container(
          padding: EdgeInsets.only(top: 48, left: 16, right: 16),
          child: _profile(),
        )
      ],
    );
  }

  Widget _profile() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage('assets/images/chris.jpg'),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Chris Evans",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(when, style: TextStyle(color: Colors.white38))
            ],
          ),
        )
      ],
    );
  }
}
