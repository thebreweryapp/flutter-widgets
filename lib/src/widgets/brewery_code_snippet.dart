import 'package:flutter/material.dart';

class BreweryCodeSnippet extends StatelessWidget {
  final String code;
  final double fontSize;

  BreweryCodeSnippet(
    this.code, {
    Key key,
    this.fontSize = 15.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      code,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: 'Consolas',
        fontSize: fontSize,
      ),
    );
  }
}
