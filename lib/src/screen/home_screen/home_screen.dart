import 'package:flutter/material.dart';

import '../cards_demo/cards_demo_screen.dart';
import '../master_detail_screen.dart';
import '../buttons_demo/buttons_demo_screen.dart';
import '../detail/detail_screen.dart';
import '../drawer_demo/drawer_demo_screen.dart';
import '../icons_demo/icons_demo_screen.dart';
import '../images_demo/images_demo_screen.dart';
import '../profile_demo/profile_demo_screen.dart';
import '../searchbar_demo/searchbar_demo_screen.dart';
import '../sectionedlist_demo/sectioned_listview_demo_screen.dart';
import '../tabs_demo/tabs_demo_screen.dart';
import '../../widgets/brewery_code_snippet.dart';
import '../../widgets/brewery_drawer.dart';
import '../../widgets/drawer_header.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _codeSnippet;

  final _drawerItems = [
    DrawerItem(title: 'Buttons Demo'),
    DrawerItem(title: 'Cards Demo'),
    DrawerItem(title: 'Profile Demo'),
    DrawerItem(title: 'Icons Demo'),
    DrawerItem(title: 'Scrollable Tabs Demo'),
    DrawerItem(title: 'Sectioned List Demo'),
    DrawerItem(title: 'SearchBar Demo'),
    DrawerItem(title: 'Drawer Demo'),
  ];

  int _selectedIndex;
  bool _isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    _isLargeScreen = MediaQuery.of(context).size.width > 600.0;

    return Scaffold(
      appBar: _appBar,
      body: MasterDetailScreen(
        master: _getMaster(_selectedIndex),
        detail: _getDetail(),
        onOrientationChanged: (orientation) {
          setState(() {
            _isLargeScreen = MediaQuery.of(context).size.width > 600.0;
          });
        },
      ),
      drawer: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: BreweryDrawer(
          header: ProfileDrawerHeader(
            profileUrl:
                "https://lh3.googleusercontent.com/a/default-user=s56-c-k-no",
            text: 'John Doe',
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          items: _createDrawerItems(),
          footer: ListTile(title: Text('Sample Menu')),
        ),
      ),
    );
  }

  List<Widget> _createDrawerItems() {
    List<Widget> items = [];

    for (int index = 0; index < _drawerItems.length; index++) {
      items.add(
        ListTile(
          title: Text(_drawerItems[index].title),
          onTap: () {
            _setSelectedIndex(index);
            _clearPreviousValues();
            Navigator.pop(context);
          },
        ),
      );
    }

    return items;
  }

  AppBar get _appBar => AppBar(
        title: Text(
          _selectedIndex != null
              ? _drawerItems[_selectedIndex].title
              : "Kitchen Sink Demo",
        ),
        elevation: 0.0,
      );

  Widget _getMaster(int index) {
    switch (index) {
      case 0:
        return ButtonsDemoScreen(onItemSelected: _onItemSelected);

      case 1:
        return CardsDemoScreen(onItemSelected: _onItemSelected);

      case 2:
        return ProfileDemoScreen(onItemSelected: _onItemSelected);

      case 3:
        return IconsDemoScreen(onItemSelected: _onItemSelected);

      case 4:
        return TabsDemoScreen(onItemSelected: _onItemSelected);

      case 5:
        return SectionedListViewDemoScreen(onItemSelected: _onItemSelected);

      case 6:
        return SearchDemoScreen(onItemSelected: _onItemSelected);

      // case 7:
      //   return ImagesDemoScreen(onItemSelected: _onItemSelected);

      case 7:
        return DrawerDemoScreen(onItemSelected: _onItemSelected);

      default:
        return Center(child: Text('Flutter Widgets Demo'));
    }
  }

  Widget _getDetail() {
    return _codeSnippet != null
        ? Container(
            color: Colors.grey[300],
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(16.0),
            child: BreweryCodeSnippet(_codeSnippet),
          )
        : null;
  }

  _onItemSelected(String string) {
    _setCodeSnippet(string);

    final _detail = _getDetail();

    if (!_isLargeScreen && _detail != null) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailScreen(child: _detail),
        ),
      );
    }
  }

  _clearPreviousValues() {
    _setCodeSnippet('');
  }

  _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _setCodeSnippet(String string) {
    setState(() {
      _codeSnippet = string;
    });
  }
}

class DrawerItem {
  final String title;
  final Widget body;

  DrawerItem({
    @required this.title,
    this.body,
  });
}
