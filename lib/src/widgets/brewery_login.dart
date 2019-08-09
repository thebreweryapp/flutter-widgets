import 'package:brewery_flutter_widget/src/widgets/brewery_passwordfield.dart';
import 'package:flutter/material.dart';
import 'primary_button.dart';

class BreweryLoginWidget extends StatelessWidget {
  final Image logo;
  final ValueChanged<String> usernameOnChangeListener;
  final ValueChanged<String> passwordOnChangeListener;
  final VoidCallback submitOnPressed;
  var _controller = TextEditingController();

  BreweryLoginWidget({
    Key key,
    this.logo,
    this.usernameOnChangeListener,
    this.passwordOnChangeListener,
    this.submitOnPressed,
  });

  bool shouldShowImage() {
    return logo != null;
  }

  @override
  Widget build(BuildContext context) {
    var logoImage;
    if (shouldShowImage()) {
      logoImage = new Container(
        width: 80.0,
        height: 80.0,
      );
    } else {
      logoImage = new Container(
        width: 80.0,
        height: 80.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
      );
    }

    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            logoImage,
            Container(
                width: 300,
                margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: TextField(
                  onChanged: usernameOnChangeListener,
                  controller: _controller,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFCFD8DC))),
                      hintText: 'Email'),
                  cursorColor: Color(0xFF000000),
                )),
            Container(
                width: 300,
                margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: BreweryPasswordField(passwordOnChangeListener)),
            PrimaryButton(
                minWidth: double.infinity,
                onPressed: submitOnPressed,
                text: 'Login'),
          ]),
    );
  }
}