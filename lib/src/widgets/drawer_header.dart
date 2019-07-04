import 'package:flutter/material.dart';

const double _kDrawerHeaderHeight = 160.0 + 1.0; // bottom edge

class ProfileDrawerHeader extends StatelessWidget {
  final Decoration decoration;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Duration duration;
  final Curve curve;
  final String text;
  final Color textColor;
  final String profileUrl;

  const ProfileDrawerHeader({
    Key key,
    this.decoration,
    this.margin = const EdgeInsets.only(bottom: 8.0),
    this.padding = const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
    this.duration = const Duration(milliseconds: 250),
    this.curve = Curves.fastOutSlowIn,
    this.text = "",
    this.textColor = Colors.white,
    this.profileUrl = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      height: statusBarHeight + _kDrawerHeaderHeight,
      child: Container(
        decoration: decoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 25.0, bottom: 15.0),
              width: 65.0,
              height: 65.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(profileUrl),
                ),
              ),
            ),
            Text(
              text,
              style: TextStyle(color: textColor),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: Divider.createBorderSide(context),
        ),
      ),
    );
  }
}
