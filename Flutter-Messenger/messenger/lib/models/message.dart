import 'package:flutter/material.dart';

class MessageModel {
  int messageType;
  String message;
  String profileImg;
  bool isMe;
  MessageModel({
    @required this.messageType,
    @required this.message,
    @required this.profileImg,
    @required this.isMe,
  });
}

List<MessageModel> messages = [
  MessageModel(
      isMe: true,
      messageType: 1,
      message: "Ubuntu jng hery,",
      profileImg:
          "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"),
  MessageModel(
      isMe: true,
      messageType: 2,
      message: "Need to use code to command,",
      profileImg:
          "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"),
  MessageModel(
      isMe: true,
      messageType: 3,
      message: "Tov work tor hery,",
      profileImg:
          "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"),
  MessageModel(
      isMe: false,
      messageType: 1,
      message: "me hate you",
      profileImg:
          " https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"),
  MessageModel(
      isMe: false,
      messageType: 2,
      message: "bah",
      profileImg:
          "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"),
  MessageModel(
      isMe: false,
      messageType: 3,
      message: "-_-",
      profileImg:
          "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"),
  MessageModel(
      isMe: true,
      messageType: 1,
      message: "Som muk",
      profileImg:
          "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"),
  MessageModel(
      isMe: true,
      messageType: 3,
      message: "Ory Reang",
      profileImg:
          "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"),
  MessageModel(
      isMe: false,
      messageType: 1,
      message: "Eng use ah laptop nus ubuntu",
      profileImg:
          "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"),
  MessageModel(
      isMe: false,
      messageType: 2,
      message: "code teat ban jenh",
      profileImg:
          "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"),
  MessageModel(
      isMe: false,
      messageType: 3,
      message: "use laptop neng lerk na kor code",
      profileImg:
          "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"),
  MessageModel(
      isMe: true,
      messageType: 4,
      message: "Oh hahahah good",
      profileImg:
          "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"),
  MessageModel(
      isMe: false,
      messageType: 4,
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      profileImg:
          "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"),
];
