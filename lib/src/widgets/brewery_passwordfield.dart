import 'package:flutter/material.dart';
import '../util/alias.dart';

class BreweryPasswordField extends StatefulWidget {
  PasswordChanged passwordOnChangeListener;

  final Icon _showPassIcon;
  final Icon _hidePassIcon;
  final PasswordChanged _passwordOnChangeListener;

  BreweryPasswordField(
      {PasswordChanged passwordOnChangeListener,
      Icon showPassIcon,
      Icon hidePassIcon})
      : _passwordOnChangeListener = passwordOnChangeListener,
        _showPassIcon = showPassIcon,
        _hidePassIcon = hidePassIcon;

  @override
  BreweryPasswordFieldState createState() => BreweryPasswordFieldState(
      passwordOnChangeListener: _passwordOnChangeListener,
      showPassIcon: _showPassIcon,
      hidePassIcon: _hidePassIcon);
}

class BreweryPasswordFieldState extends State<BreweryPasswordField> {
  // Initially password is obscure
  bool _obscureText = true;
  var _errorText;

  var _controller = TextEditingController();

  Icon _showPassIcon;
  Icon _hidePassIcon;
  PasswordChanged _passwordOnChangeListener;

  BreweryPasswordFieldState(
      {PasswordChanged passwordOnChangeListener,
      Icon showPassIcon,
      Icon hidePassIcon})
      : _passwordOnChangeListener = passwordOnChangeListener,
        _showPassIcon =
            showPassIcon == null ? Icon(Icons.lock_outline) : showPassIcon,
        _hidePassIcon =
            hidePassIcon == null ? Icon(Icons.lock_open) : hidePassIcon;

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
            decoration: InputDecoration(
              labelText: 'Password',
              errorText: _errorText,
            ),
            onChanged: (text) {
              setState(() {
                _errorText = _passwordOnChangeListener(text);
              });
            },
            obscureText: _obscureText,
            controller: _controller,
          ),
          new Align(
            alignment: Alignment.centerRight,
            child: new IconButton(
              icon: _obscureText ? _showPassIcon : _hidePassIcon,
              tooltip: 'Show password',
              onPressed: _toggle,
            ),
          )
        ],
      ),
    );
  }
}
