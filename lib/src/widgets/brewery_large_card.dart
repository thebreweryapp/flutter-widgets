import 'package:flutter/material.dart';

class BreweryLargeCard extends StatelessWidget {
  final Image image;
  final String title;
  final String desc;
  final Color titleColor;
  final double titleFontSize;
  final VoidCallback leftButtonOnPressed;
  final VoidCallback rightButtonOnPressed;
  final String leftButtonMsg;
  final String rightButtonMsg;
  final double elevation;
  final MainAxisAlignment buttonAlignment;

  const BreweryLargeCard({
    Key key,
    this.image,
    this.title = "",
    this.desc = "",
    this.titleColor = Colors.white,
    this.titleFontSize = 16,
    @required this.leftButtonOnPressed,
    @required this.rightButtonOnPressed,
    this.leftButtonMsg = "Button",
    this.rightButtonMsg = "Button",
    this.elevation = 16.0,
    this.buttonAlignment = MainAxisAlignment.end,
  }) : super(key: key);

  bool shouldShowImage() {
    return image != null;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 300, maxHeight: 300),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                if (shouldShowImage())
                  Container(
                    height: 175,
                    width: double.infinity,
                    child: image,
                  )
                else
                  Container(
                    height: 175,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: titleColor,
                      fontSize: titleFontSize,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  desc,
                  textAlign: TextAlign.left,
                  maxLines: 2,
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            Row(
              mainAxisAlignment: buttonAlignment,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    leftButtonMsg,
                    style: TextStyle(color: Colors.blue),
                  ),
                  onPressed: leftButtonOnPressed,
                  textColor: Colors.blue,
                ),
                FlatButton(
                  child: Text(
                    rightButtonMsg,
                    style: TextStyle(color: Colors.blue),
                  ),
                  onPressed: rightButtonOnPressed,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
