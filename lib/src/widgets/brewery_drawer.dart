import 'package:flutter/material.dart';

class BreweryDrawer extends StatelessWidget {
  final double elevation;

  final Widget drawerHeader;
  final List<Widget> drawerItems;
  final Widget drawerFooter;

  final String semanticLabel;

  const BreweryDrawer({
    Key key,
    this.elevation = 16.0,
    this.drawerHeader,
    this.drawerItems,
    this.drawerFooter,
    this.semanticLabel,
  })  : assert(elevation != null && elevation >= 0.0),
        super(key: key);

  List<Widget> createDrawerListItems() {
    var drawerWidgets = List<Widget>();
    drawerWidgets.add(drawerHeader);
    drawerWidgets.addAll(drawerItems);
    return drawerWidgets;
  }

  bool shouldShowFooter() {
    return drawerFooter != null;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Expanded(
            child: ListView(
              children: createDrawerListItems(),
            ),
          ),
          if (shouldShowFooter())
            new Column(
              children: <Widget>[
                Divider(
                  height: 1,
                ),
                new Align(
                  alignment: Alignment.bottomCenter,
                  child: drawerFooter,
                ),
              ],
            )
        ],
      ),
    );
  }
}
