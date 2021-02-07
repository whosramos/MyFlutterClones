class MessageModel {
  final String msg;
  final String time;
  final bool seen;
  final bool received;
  final bool sent;
  final bool isMe;
  MessageModel(
    this.msg,
    this.time,
    this.seen,
    this.received,
    this.sent,
    this.isMe,
  );
}

List<MessageModel> msgs = [
  MessageModel(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. !",
      "12:56 am",
      false,
      false,
      true,
      true),
  MessageModel(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. !",
      "12:56 am",
      true,
      false,
      false,
      true),
  MessageModel(
      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor",
      "12:56 am",
      true,
      false,
      false,
      true),
  MessageModel("Hello", "12:56 am", true, false, false, false),
  MessageModel(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. !",
      "12:56 PM",
      true,
      false,
      false,
      false),
  MessageModel(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. !",
      "12:56 am",
      true,
      false,
      false,
      true),
  MessageModel("Hello", "12:56 am", true, true, false, true),
  MessageModel("Hello", "12:56 am", true, false, false, true),
  MessageModel("Hello", "12:56 am", true, false, false, false),
  MessageModel(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. !",
      "12:56 PM",
      true,
      false,
      false,
      false),
  MessageModel("Hello", "12:56 am", true, false, false, false),
  MessageModel("Hello", "12:56 PM", true, false, false, false),
  MessageModel(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. !",
      "12:56 am",
      true,
      false,
      false,
      true),
  MessageModel("Hello", "12:56 am", true, true, false, true),
  MessageModel("Hello", "12:56 am", true, false, false, true),
  MessageModel(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. !",
      "12:56 am",
      true,
      false,
      false,
      false),
  MessageModel("Hello", "12:56 am", true, false, false, true),
  MessageModel("Hello", "12:56 am", true, false, false, true),
  MessageModel("Hello", "12:56 am", true, false, false, false),
  MessageModel("Hello", "12:56 am", true, false, false, true),
  MessageModel(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. !",
      "12:56 am",
      true,
      false,
      false,
      false),
  MessageModel("Hello", "12:56 am", true, false, false, true),
  MessageModel("Hello", "12:56 am", true, false, true, false),
];
