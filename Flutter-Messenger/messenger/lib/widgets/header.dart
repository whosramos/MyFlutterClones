import 'package:flutter/material.dart';
import '../theme.dart';

class Header extends StatelessWidget {
  final String title;
  Header({@required this.title});

  @override
  Widget build(BuildContext context) {
    String userImage =
        "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(userImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    title,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 35,
                    height: 35,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: grey),
                    child: Center(
                      child: Icon(Icons.camera_alt, size: 20),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    width: 35,
                    height: 35,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: grey),
                    child: Center(
                      child: Icon(Icons.edit, size: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
