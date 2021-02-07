import 'package:flutter/material.dart';
import '../models/call.dart';

class CallsPage extends StatefulWidget {
  @override
  _Callspagestate createState() => _Callspagestate();
}

class _Callspagestate extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        callList.length,
        (index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      callList[index].name,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 5)
                  ],
                ),
                subtitle: Row(
                  children: <Widget>[
                    callList[index].incomingTrue
                        ? Icon(
                            Icons.call_received,
                            size: MediaQuery.of(context).size.height * 0.025,
                            color: Colors.red.shade700,
                          )
                        : Icon(
                            Icons.call_made,
                            size: MediaQuery.of(context).size.height * 0.025,
                            color: Colors.green.shade700,
                          ),
                    callList[index].times > 0
                        ? Text(
                            " (${callList[index].times}) ",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                            ),
                          )
                        : Text(""),
                    Text(
                      callList[index].date,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                  ],
                ),
                leading: Container(
                  child: CircleAvatar(
                    radius: 24.0,
                    backgroundImage: AssetImage(callList[index].imageURL),
                  ),
                ),
                trailing: IconButton(
                  icon: callList[index].callTrue
                      ? Icon(
                          Icons.call,
                          color: Theme.of(context).primaryColor,
                        )
                      : Icon(
                          Icons.videocam,
                          color: Theme.of(context).primaryColor,
                        ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.02),
                child: Divider(
                    height: 1.0,
                    indent: MediaQuery.of(context).size.height * 0.11),
              )
            ],
          );
        },
      ),
    );
  }
}
