class CallModel {
  String name;
  String imageURL;
  String date;
  int times;
  bool incomingTrue;
  bool callTrue;
  CallModel({
    this.name,
    this.imageURL,
    this.date,
    this.times,
    this.incomingTrue,
    this.callTrue,
  });
}

List<CallModel> callList = [
  CallModel(
    name: "Elizabeth Olsen",
    imageURL: 'assets/images/Elizabeth.jpg',
    date: '10 March, 12:26 pm',
    times: 3,
    incomingTrue: true,
    callTrue: false,
  ),
  CallModel(
    name: "Tom Holland",
    imageURL: 'assets/images/tom.jpg',
    date: '10 March, 12:26 pm',
    times: 0,
    incomingTrue: false,
    callTrue: false,
  ),
  CallModel(
    name: "Scarlett Johansson",
    imageURL: 'assets/images/Scarlett.jpg',
    date: '10 March, 12:26 pm',
    times: 3,
    incomingTrue: false,
    callTrue: false,
  ),
  CallModel(
    name: "Robert Downey Jr.",
    imageURL: 'assets/images/robert.jpg',
    date: '10 March, 12:26 pm',
    times: 0,
    incomingTrue: true,
    callTrue: true,
  ),
  CallModel(
    name: "Chris Evans",
    imageURL: 'assets/images/chris.jpg',
    date: '10 March, 12:26 pm',
    times: 3,
    incomingTrue: true,
    callTrue: false,
  ),
  CallModel(
    name: "Chris Hemsworth",
    imageURL: 'assets/images/chris2.jpg',
    date: '10 March, 12:26 pm',
    times: 3,
    incomingTrue: false,
    callTrue: true,
  ),
];
