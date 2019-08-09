import 'package:flutter/material.dart';

class LabeledIcon extends StatelessWidget {
  final IconData iconData;
  final String name;
  final Color color;

  const LabeledIcon({this.iconData, this.name, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconData, color: color),
        Text(name),
      ],
    );
    ;
  }
}
