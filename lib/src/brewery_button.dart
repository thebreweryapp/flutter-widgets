import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BreweryButton extends RaisedButton {
  BreweryButton({
    Key key,
    @required VoidCallback onPressed,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor = const Color(0xFFFFFFFF),
    Color disabledTextColor = const Color(0xFFB0BEC5),
    Color color = const Color(0xFF0097EB),
    Color disabledColor = const Color(0xFFCFD8DC),
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor = const Color(0xFF00669F),
    Brightness colorBrightness,
    double elevation,
    double focusElevation,
    double hoverElevation,
    double highlightElevation,
    double disabledElevation,
    EdgeInsetsGeometry padding,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus = false,
    MaterialTapTargetSize materialTapTargetSize,
    Duration animationDuration,
    Widget child,
  })  : assert(autofocus != null),
        assert(elevation == null || elevation >= 0.0),
        assert(focusElevation == null || focusElevation >= 0.0),
        assert(hoverElevation == null || hoverElevation >= 0.0),
        assert(highlightElevation == null || highlightElevation >= 0.0),
        assert(disabledElevation == null || disabledElevation >= 0.0),
        super(
          key: key,
          onPressed: onPressed,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          elevation: elevation,
          focusElevation: focusElevation,
          hoverElevation: hoverElevation,
          highlightElevation: highlightElevation,
          disabledElevation: disabledElevation,
          padding: padding,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          animationDuration: animationDuration,
          child: child,
        );
}
