class SongModel {
  String image;
  String name;
  String bandName;
  String songLength;
  List<List> otherSongs;
  SongModel({
    this.image,
    this.name,
    this.bandName,
    this.otherSongs,
    this.songLength,
  });
}

String wImage =
    'https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/1/6/4/0/1640a0be61d0ba39964ad98b4abf2d27.jpg';
List<List> wOtherSongs = [
  ['Alone Again', true],
  ['Too Late', true],
  ['Hardest To Love', true],
  ['Scared To Live', true],
  ['Snowchild', true],
  ['Escape From LA', true],
  ['Heartless', true],
  ['Faith', true],
  ['Blinding Lights', false],
  ['In Your Eyes', true],
  ['Save Your Tears', true],
  ['Repeat After Me (Interlude)', true],
  ['After Hours', false],
  ['Until I Bleed Out', true]
];

SongModel theWeeknd = SongModel(
  songLength: '4:22',
  image: wImage,
  name: 'Blinding lights',
  bandName: 'The Weeknd ',
  otherSongs: wOtherSongs,
);

List<SongModel> songs = [
  SongModel(
    songLength: '4:22',
    image: wImage,
    name: 'Blinding lights',
    bandName: 'The Weeknd ',
    otherSongs: wOtherSongs,
  ),
  SongModel(
    songLength: '4:22',
    image: wImage,
    name: 'Alone Again',
    bandName: 'The Weeknd ',
    otherSongs: wOtherSongs,
  ),
  SongModel(
    songLength: '4:22',
    image: wImage,
    name: 'Too Late',
    bandName: 'The Weeknd ',
    otherSongs: wOtherSongs,
  ),
  SongModel(
    songLength: '4:22',
    image: wImage,
    name: 'Hardest To Love',
    bandName: 'The Weeknd ',
    otherSongs: wOtherSongs,
  ),
  SongModel(
    songLength: '4:22',
    image: wImage,
    name: 'Scared To Live',
    bandName: 'The Weeknd ',
    otherSongs: wOtherSongs,
  ),
  SongModel(
    songLength: '4:22',
    image: wImage,
    name: 'Snowchild',
    bandName: 'The Weeknd ',
    otherSongs: wOtherSongs,
  ),
];
