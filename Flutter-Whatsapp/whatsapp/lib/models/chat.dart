class ChatModel {
  String name;
  String imageURL;
  String message;
  String date;
  String time;
  bool seen;
  bool sent;
  bool received;
  int newMessages;
  ChatModel({
    this.name,
    this.imageURL,
    this.message,
    this.date,
    this.time,
    this.seen,
    this.sent,
    this.received,
    this.newMessages,
  });
}

List<ChatModel> peopleList = [
  ChatModel(
    name: "Elizabeth Olsen",
    imageURL: 'assets/images/Elizabeth.jpg',
    message:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. !",
    date: "11/20",
    time: "17:30",
    seen: true,
    sent: false,
    received: false,
    newMessages: 2,
  ),
  ChatModel(
    name: "Tom Holland",
    imageURL: 'assets/images/tom.jpg',
    message: "Lorem Ipsum is simply dummy text",
    date: "11/20",
    time: "17:30",
    seen: true,
    sent: false,
    received: false,
    newMessages: 2,
  ),
  ChatModel(
    name: "Scarlett Johansson",
    imageURL: 'assets/images/Scarlett.jpg',
    message: "Lorem Ipsum is simply dummy text",
    date: "11/20",
    time: "17:30",
    seen: true,
    sent: false,
    received: false,
    newMessages: 2,
  ),
  ChatModel(
    name: "Robert Downey Jr.",
    imageURL: 'assets/images/robert.jpg',
    message: "Lorem Ipsum is simply dummy text",
    date: "11/20",
    time: "17:30",
    seen: true,
    sent: false,
    received: false,
    newMessages: 2,
  ),
  ChatModel(
    name: "Chris Evans",
    imageURL: 'assets/images/chris.jpg',
    message: "Lorem Ipsum is simply dummy text",
    date: "11/20",
    time: "17:30",
    seen: true,
    sent: false,
    received: false,
    newMessages: 2,
  ),
  ChatModel(
    name: "Chris Hemsworth",
    imageURL: 'assets/images/chris2.jpg',
    message: "Lorem Ipsum is simply dummy text",
    date: "11/20",
    time: "17:30",
    seen: true,
    sent: false,
    received: false,
    newMessages: 2,
  ),
];
