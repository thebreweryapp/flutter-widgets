import 'package:flutter/material.dart';

import 'screen/buttons_screen.dart';
import 'screen/textfields_screen.dart';
import 'screen/cards_screen.dart';
import 'screen/profile_screen.dart';
import 'screen/icons_screen.dart';
import 'screen/tabs_screen.dart';
import 'screen/scrollablelist_screen.dart';
import 'screen/search_screen.dart';
import 'widgets/drawer_header.dart';
import 'widgets/brewery_drawer.dart';
import 'widgets/brewery_searchbar.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _drawerItems = [
    BreweryDrawerItem(
      title: 'Buttons',
      body: ButtonsScreen(),
    ),
    BreweryDrawerItem(
      title: 'TextFields',
      body: TextFieldsScreen(),
    ),
    BreweryDrawerItem(
      title: 'Cards',
      body: CardsScreen(),
    ),
    BreweryDrawerItem(
      title: 'Profile',
      body: ProfileScreen(),
    ),
    BreweryDrawerItem(
      title: 'Icons',
      body: IconsScreen(),
    ),
    BreweryDrawerItem(
      title: 'Tabs',
      body: TabsScreen(),
    ),
    BreweryDrawerItem(
      title: 'Scrollable List',
      body: ScrollableListScreen(),
    ),
    BreweryDrawerItem(
      title: 'Search',
      body: SearchScreen(),
    ),
  ];

  int _selectedIndex;

  Widget highlightWidget = Center(child: Text('Brewery Flutter Widget!'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(_selectedIndex),
      body: Container(child: _getBody(_selectedIndex)),
      drawer: BreweryDrawer(
        drawerHeader: ProfileDrawerHeader(
          profileUrl:
              "https://lh3.googleusercontent.com/a/default-user=s56-c-k-no",
          text: 'John Doe',
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        drawerItems: _createDrawerItems(),
        drawerFooter: ListTile(
          title: Text('Sample Menu'),
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
            Navigator.pop(context);
          },
        ),
      );
    }

    return items;
  }

  Widget _getBody(int index) => index == null
      ? Center(child: Text('Brewery Flutter Widget!'))
      : _drawerItems[index].body;

  PreferredSizeWidget _getAppBar(int index) {
    if (index == null || _drawerItems[index].title != 'Search') {
      return AppBar(
        title: Text("Brewery"),
        elevation: 0.0,
      );
    }

    final yellowTint = Color.fromRGBO(249, 204, 65, 1);

    return BrewerySearchBar(
      backgroundColor: Colors.black,
      actionsIconTheme: IconThemeData(color: yellowTint),
      iconTheme: IconThemeData(color: yellowTint),
      textTheme: TextTheme(title: TextStyle(color: yellowTint, fontSize: 20.0)),
      cursorColor: yellowTint,
      hintText: 'Search',
      onEditingComplete: () {
        print('onEditingComplete');
      },
      onSubmitted: (text) {
        print('onSubmitted: $text');
      },
      onTextChanged: (text) {
        print('onTextChanged: $text');
      },
      onClear: () {
        print('onClear');
      },
    );
  }

  _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class BreweryDrawerItem {
  final String title;
  final Widget body;

  BreweryDrawerItem({@required this.title, this.body});
}
