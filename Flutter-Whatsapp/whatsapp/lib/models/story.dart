enum MediaType { image, video, text }

class StoryModel {
  final MediaType mediaType;
  final String media;
  final double duration;
  final String caption;
  final String when;
  final String color;

  StoryModel({
    this.mediaType,
    this.media,
    this.duration,
    this.caption,
    this.when,
    this.color,
  });
}

List<StoryModel> stories = [
  StoryModel(
    mediaType: MediaType.image,
    media:
        "https://observatoriodocinema.elav.tmp.br/wp-content/uploads/2020/06/filmes-da-marvel-e-dc.jpg",
    duration: 5.0,
    caption: "Marvel is awasome",
    when: "14 hours ago",
    color: "",
  ),
  StoryModel(
    mediaType: MediaType.text,
    media: "",
    duration: 4.0,
    caption: "What is your favorite hero?",
    when: "3 hours ago",
    color: "0xFF303f9f",
  ),
  StoryModel(
    mediaType: MediaType.video,
    media:
        "https://media2.giphy.com/media/vBjLa5DQwwxbi/giphy.mp4?cid=ecf05e47rc8bqljw6f1m8u75w7jrzubxyktiq8rl0i4ahy8s&rid=giphy.mp4",
    duration: 4.0,
    caption: "Video",
    when: "2 hours ago",
    color: "",
  ),
  StoryModel(
    mediaType: MediaType.image,
    media:
        "https://64.media.tumblr.com/e896dbefe95691dbd1d3cbb9a9c41732/tumblr_n9htmzRdzO1tdyu9eo3_500.gifv",
    duration: 4.0,
    caption: "Bang",
    when: "1 hours ago",
    color: "",
  ),
];
