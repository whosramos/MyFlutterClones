import 'package:flutter/material.dart';

class StoryModel {
  int id;
  String name;
  String img;
  bool online;
  bool story;
  StoryModel({
    @required this.id,
    @required this.img,
    @required this.name,
    @required this.online,
    @required this.story,
  });
}

List<StoryModel> userStories = [
  StoryModel(
    id: 1,
    img:
        "https://images.unsplash.com/photo-1571741140674-8949ca7df2a7?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    name: "Michael",
    online: true,
    story: true,
  ),
  StoryModel(
    id: 2,
    img:
        "https://images.unsplash.com/photo-1536763843054-126cc2d9d3b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    name: "Kirill",
    online: false,
    story: false,
  ),
  StoryModel(
    id: 3,
    img:
        "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
    name: "Lesly",
    online: true,
    story: false,
  ),
  StoryModel(
    id: 4,
    img:
        "https://images.unsplash.com/photo-1523264939339-c89f9dadde2e?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
    name: "Valerie",
    online: true,
    story: true,
  ),
  StoryModel(
    id: 5,
    img:
        "https://images.unsplash.com/photo-1458696352784-ffe1f47c2edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80",
    name: "Frank",
    online: false,
    story: false,
  ),
  StoryModel(
    id: 6,
    img:
        "https://images.unsplash.com/photo-1519531591569-b84b8174b508?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    name: "Joanna",
    online: false,
    story: true,
  ),
];
