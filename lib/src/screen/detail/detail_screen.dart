import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Widget child;

  DetailScreen({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: child,
    );
  }
}
