import 'package:flutter/material.dart';

class SingleLineItemData {
  final Image image;
  final String title;

  SingleLineItemData({this.image, @required this.title});
}

class SingleLineItem extends StatelessWidget {
  final SingleLineItemData singleLineItemData;

  const SingleLineItem({@required this.singleLineItemData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        new Container(
          margin: EdgeInsets.all(15),
          width: 20.0,
          height: 20.0,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFD5D5D5),
          ),
        ),
        new Text(
          singleLineItemData.title,
          style: TextStyle(fontSize: 16, color: Color(0xFF000000)),
        )
      ],
    );
  }
}
