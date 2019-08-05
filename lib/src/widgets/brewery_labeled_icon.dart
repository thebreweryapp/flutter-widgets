import 'package:flutter/material.dart';

class LabeledIconWidget extends StatelessWidget {
  final IconData iconData;
  final String name;
  final Color materialColor;

  const LabeledIconWidget(
      {this.iconData, this.name, this.materialColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconData, color: materialColor),
        Text(name),
      ],
    );
    ;
  }
}
