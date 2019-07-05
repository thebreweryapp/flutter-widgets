import 'package:flutter/material.dart';

class BreweryMediumCard extends StatelessWidget {
  final Image image;
  final String title;
  final Color titleColor;
  final double titleFontSize;
  final double elevation;
  final MainAxisAlignment buttonAlignment;
  final List<IconButton> iconButtons;

  const BreweryMediumCard({
    Key key,
    this.image,
    this.title = "",
    this.titleColor = Colors.white,
    this.titleFontSize = 16,
    this.elevation = 16.0,
    this.buttonAlignment = MainAxisAlignment.end,
    this.iconButtons,
  }) : super(key: key);

  bool shouldShowImage() {
    return image != null;
  }

  bool shouldShowButtons() {
    return iconButtons != null;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 225, maxHeight: 225),
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
            if (shouldShowButtons())
              Row(
                mainAxisAlignment: buttonAlignment,
                children: iconButtons,
              )
          ],
        ),
      ),
    );
  }
}
