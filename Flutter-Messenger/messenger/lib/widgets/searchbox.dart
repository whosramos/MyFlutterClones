import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../theme.dart';

class SearchBox extends StatelessWidget {
  final TextEditingController searchController;
  SearchBox({@required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: grey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          cursorColor: black,
          controller: searchController,
          decoration: InputDecoration(
            prefixIcon: Icon(
              LineIcons.search,
              color: black.withOpacity(0.5),
            ),
            hintText: "Search",
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
