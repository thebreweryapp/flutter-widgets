import 'package:flutter/material.dart';

class LabeledIcon extends StatelessWidget {
  final IconData iconData;
  final String name;
  final Color color;
  final TextStyle style;

  const LabeledIcon({
    @required this.iconData,
    this.name,
    this.color = Colors.black,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconData, color: color),
        Text(
          name,
          textAlign: TextAlign.center,
          style: style ?? TextStyle(fontSize: 13.0),
        ),
      ],
    );
    ;
  }
}
