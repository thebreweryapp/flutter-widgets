import 'package:flutter/material.dart';

class BreweryPasswordField extends StatefulWidget {
  ValueChanged<String> passwordOnChangeListener;

  BreweryPasswordField(this.passwordOnChangeListener);

  @override
  BreweryPasswordFieldState createState() =>
      BreweryPasswordFieldState(passwordOnChangeListener);
}

class BreweryPasswordFieldState extends State<BreweryPasswordField> {
  // Initially password is obscure
  bool _obscureText = true;

  var _controller = TextEditingController();

  ValueChanged<String> passwordOnChangeListener;
  String _password;

  BreweryPasswordFieldState(this.passwordOnChangeListener);

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Stack(
        children: <Widget>[
          new TextField(
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
            onChanged: passwordOnChangeListener,
            // validator: (val) => val.length < 6 ? 'Password too short.' : null,
            // onSaved: (val) => {
            //   passwordOnChangeListener(val),
            //   _password = val,
            // },
            obscureText: _obscureText,
            controller: _controller,
          ),
          new Align(
            alignment: Alignment.centerRight,
            child: new IconButton(
              icon: Icon(Icons.vpn_key),
              tooltip: 'Show password',
              onPressed: _toggle,
            ),
          )
        ],
      ),
    );
  }
}
