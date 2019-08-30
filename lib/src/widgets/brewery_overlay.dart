import 'package:flutter/material.dart';

class BreweryOverlay extends StatelessWidget {
  final Color color;

  BreweryOverlay({Key key, this.color})
      : assert(color != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0,
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Container(color: color),
    );
  }
}
