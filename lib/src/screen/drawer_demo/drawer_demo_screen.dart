import 'package:flutter/material.dart';

import '../../widgets/brewery_drawer.dart';

class DrawerDemoScreen extends StatefulWidget {
  final Function(String) onItemSelected;

  DrawerDemoScreen({
    Key key,
    @required this.onItemSelected,
  }) : super(key: key);

  @override
  State<DrawerDemoScreen> createState() => _DrawerDemoScreenState();
}

class _DrawerDemoScreenState extends State<DrawerDemoScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.red[300],
      ),
      drawer: BreweryDrawer(
        header: _header,
        items: _drawerItems,
        footer: _footer,
      ),
    );
  }

  List<Widget> get _drawerItems => [
        ListTile(
          title: Text('Menu 1'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Menu 2'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Menu 3'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ];

  Widget get _header => Container(
        height: 150.0,
        color: Colors.tealAccent,
      );

  Widget get _footer => Container(
        height: 100.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.center,
        child: Text('Footer'),
      );

  _afterLayout(_) {
    widget.onItemSelected(
      """
BreweryDrawer(
  header: _header,
  items: _drawerItems,
  footer: _footer,
);
""",
    );
  }
}
