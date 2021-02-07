import 'package:flutter/material.dart';

class UserModel {
  int id;
  String name;
  String img;
  bool online;
  bool story;
  String message;
  String created_at;
  UserModel({
    @required this.id,
    @required this.name,
    @required this.img,
    @required this.online,
    @required this.story,
    @required this.message,
    @required this.created_at,
  });
}

List<UserModel> userMessages = [
  UserModel(
    id: 1,
    name: "Michael Dam",
    img:
        "https://images.unsplash.com/photo-1571741140674-8949ca7df2a7?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    online: true,
    story: true,
    message: "How are you doing?",
    created_at: "1:00 pm",
  ),
  UserModel(
    id: 2,
    name: "Charly Race",
    img:
        "https://images.unsplash.com/photo-1467272046618-f2d1703715b1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    online: false,
    story: false,
    message: "Long time no see!!",
    created_at: "12:00 am",
  ),
  UserModel(
    id: 3,
    name: "Tyler Nix",
    img:
        "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80",
    online: false,
    story: true,
    message: "Glad to know you in person!",
    created_at: "3:30 pm",
  ),
  UserModel(
    id: 4,
    name: "Kirill Bishop",
    img:
        "https://images.unsplash.com/photo-1536763843054-126cc2d9d3b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    online: false,
    story: false,
    message: "I'm doing fine and how about you?",
    created_at: "9:00 am",
  ),
  UserModel(
    id: 5,
    name: "Lesly Liverani",
    img:
        "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
    online: true,
    story: false,
    message: "What is your real name?",
    created_at: "11:25 am",
  ),
  UserModel(
    id: 6,
    name: "Valerie Deluvio",
    img:
        "https://images.unsplash.com/photo-1523264939339-c89f9dadde2e?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
    online: true,
    story: true,
    message: "I'm happy to be your friend",
    created_at: "10:00 am",
  ),
  UserModel(
    id: 7,
    name: "Frank Henry",
    img:
        "https://images.unsplash.com/photo-1458696352784-ffe1f47c2edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80",
    online: false,
    story: false,
    message: "Thanks for your help.",
    created_at: "2:34 pm",
  ),
  UserModel(
    id: 8,
    name: "Joanna Lackmann",
    img:
        "https://images.unsplash.com/photo-1519531591569-b84b8174b508?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    online: false,
    story: true,
    message: "I just arrived home.",
    created_at: "1:12 am",
  ),
];
