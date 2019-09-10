import 'package:flutter/material.dart';

class BreweryDrawer extends StatelessWidget {
  final double elevation;

  final Widget header;
  final List<Widget> items;
  final Widget footer;

  final String semanticLabel;

  final Color dividerColor;

  /// Determins if the footer widget is trailing with the list items
  /// or sticky at the bottom of the drawer.
  ///
  final bool stickyFooter;

  const BreweryDrawer({
    Key key,
    this.elevation = 16.0,
    this.header,
    this.items,
    this.footer,
    this.semanticLabel,
    this.stickyFooter = true,
    this.dividerColor = Colors.grey,
  })  : assert(elevation != null && elevation >= 0.0),
        super(key: key);

  List<Widget> createDrawerListItems() {
    var drawerWidgets = List<Widget>();
    drawerWidgets.add(header);
    drawerWidgets.addAll(items);
    return drawerWidgets;
  }

  bool get _shouldShowFooter => footer != null;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new Column(
        mainAxisSize: MainAxisSize.max,
        children: _createDrawerItems(),
      ),
    );
  }

  List<Widget> _createDrawerItems() {
    var tempDrawerItems = <Widget>[];

    if (_shouldShowFooter) {
      if (stickyFooter) {
        tempDrawerItems.add(Expanded(
          child: ListView(
            children: createDrawerListItems(),
          ),
        ));
        tempDrawerItems.add(new Column(
          children: <Widget>[
            Divider(
              height: 1,
              color: dividerColor,
            ),
            new Align(
              alignment: Alignment.bottomCenter,
              child: footer,
            ),
          ],
        ));
      } else {
        var drawerListItems = <Widget>[];

        drawerListItems.add(header);
        drawerListItems.addAll(items);
        drawerListItems.add(Divider(height: 1));
        drawerListItems.add(footer);

        tempDrawerItems.add(Expanded(
            child: ListView(
          children: drawerListItems,
        )));
      }
    } else {
      tempDrawerItems.add(Expanded(
        child: ListView(
          children: createDrawerListItems(),
        ),
      ));
    }

    return tempDrawerItems;
  }
}
