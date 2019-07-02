import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  VoidCallback _onPressed;
  String _text;
  bool _disabled;
  Color _textColor;
  Color _disabledTextColor;
  Color _color;
  Color _borderColor;
  Color _disabledColor;
  Color _splashColor;
  double _elevation;
  double _highlightElevation;
  EdgeInsetsGeometry padding;

  SecondaryButton({
    Key key,
    @required VoidCallback onPressed,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color borderColor,
    Color disabledColor,
    Color highlightColor,
    Color splashColor,
    bool disabled = false,
    String text,
    double elevation = 0.0,
    double highlightElevation = 0.0,
    EdgeInsetsGeometry padding,
  })  : _onPressed = onPressed,
        _text = text,
        _disabled = disabled,
        _textColor = textColor == null ? Color(0xFF0097EB) : textColor,
        _disabledTextColor =
            disabledTextColor == null ? Color(0xFFB0BEC5) : disabledTextColor,
        _color = color == null ? Color(0xFFFFFFFF) : color,
        _borderColor = borderColor == null ? Color(0xFF0097EB) : borderColor,
        _disabledColor =
            disabledColor == null ? Color(0xFFCFD8DC) : disabledColor,
        _splashColor = splashColor == null ? Color(0xFF00669F) : splashColor,
        _elevation = elevation,
        _highlightElevation = highlightElevation,
        padding = padding,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Material(
      elevation: _elevation,
      child: OutlineButton(
        child: Text(
          _text,
          style: TextStyle(color: _disabled ? _disabledTextColor : _textColor),
        ),
        splashColor: _splashColor,
        highlightElevation: _highlightElevation,
        color: _disabled ? _disabledColor : _color,
        onPressed:
            _disabled ? null : _onPressed, //callback when button is clicked
        borderSide: BorderSide(
          color:
              _disabled ? _disabledColor : _borderColor, //Color of the border
          style: BorderStyle.solid, //Style of the border
          width: 0.8, //width of the border
        ),
      ),
    ));
  }
}
