import 'package:flutter/material.dart';
import 'primary_button.dart';
import 'secondary_button.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicWidth(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Text('Primary'),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: PrimaryButton(
                onPressed: () {},
                text: 'Brewery Button',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Text('Disabled Primary'),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: PrimaryButton(
                onPressed: () {},
                disabled: true,
                text: 'Brewery Button',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Text('Secondary'),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: SecondaryButton(
                onPressed: () {},
                text: 'Brewery Button',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Text('Disabled Secondary'),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: SecondaryButton(
                onPressed: () {},
                disabled: true,
                text: 'Brewery Button',
              ),
            ),
          ])),
    );
  }
}
