import 'package:flutter/material.dart';

class TextFieldsDemoScreen extends StatelessWidget {
  final Function(String) onItemSelected;

  TextFieldsDemoScreen({Key key, @required this.onItemSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    controller.text = "Input text";

    return Center(
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFCFD8DC))),
                    hintText: 'Hint text'),
                cursorColor: Color(0xFF000000),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFCFD8DC))),
                    hintText: 'Hint text'),
                cursorColor: Color(0xFF000000),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    errorText: 'Error message',
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFCFD8DC))),
                    hintText: 'Hint text'),
                cursorColor: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
