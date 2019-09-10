import 'package:flutter/material.dart';
import 'single_line_item.dart';

class Profile extends StatelessWidget {
  final Image image;
  final String name;
  final String email;
  final List<SingleLineItemData> items;

  const Profile({
    Key key,
    this.image,
    this.name = "",
    this.email = "",
    this.items,
  });

  bool get _shouldShowImage => image != null;

  @override
  Widget build(BuildContext context) {
    var profilePic;
    if (_shouldShowImage) {
      profilePic = Container(
        width: 80.0,
        height: 80.0,
      );
    } else {
      profilePic = Container(
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
      );
    }

    return Container(
      margin: EdgeInsets.all(20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            profilePic,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                email,
                style: TextStyle(fontSize: 16, color: Color(0xFFB0BEC5)),
              ),
            ),
            Container(
              child: _createSingleLineItems(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createSingleLineItems() {
    var _items = <Widget>[];
    for (final item in items) {
      _items.add(
        SingleLineItem(items: item),
      );
    }

    return Expanded(
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: _items,
      ),
    );
  }
}
