import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final Image image;
  final String name;
  final String email;

  const Profile({
    Key key,
    this.image,
    this.name = "",
    this.email = "",
  });

  bool shouldShowImage() {
    return image != null;
  }

  @override
  Widget build(BuildContext context) {
    var profilePic;
    if (shouldShowImage()) {
      profilePic = new Container(
        width: 80.0,
        height: 80.0,
      );
    } else {
      profilePic = new Container(
        width: 80.0,
        height: 80.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
      );
    }
    return Container(
        margin: EdgeInsets.all(20),
        child: new Center(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            profilePic,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(name,
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                email,
                style: TextStyle(fontSize: 16, color: Color(0xFFB0BEC5)),
              ),
            )
          ],
        )));
  }
}
