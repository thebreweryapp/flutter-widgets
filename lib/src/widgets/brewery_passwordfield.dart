import 'package:flutter/material.dart';

class BreweryPasswordField extends StatefulWidget {
  @override
  BreweryPasswordFieldState createState() => BreweryPasswordFieldState();
}

class BreweryPasswordFieldState extends State<BreweryPasswordField> {
  // Initially password is obscure
  bool _obscureText = true;

  String _password;

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
          new TextFormField(
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
            validator: (val) => val.length < 6 ? 'Password too short.' : null,
            onSaved: (val) => _password = val,
            obscureText: _obscureText,
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
