import 'package:flutter/material.dart';
import 'screen/buttons_screen.dart';
import 'screen/textfields_screen.dart';
import 'screen/cards_screen.dart';
import 'widgets/drawer_header.dart';
import 'widgets/brewery_drawer.dart';
import 'screen/profile_screen.dart';
import 'screen/icons_screen.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String title = "Brewery";
  Widget highlightWidget = Center(child: Text('Brewery Flutter Widget!'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(child: highlightWidget),
      drawer: BreweryDrawer(
        drawerHeader: ProfileDrawerHeader(
          profileUrl:
              "https://lh3.googleusercontent.com/a/default-user=s56-c-k-no",
          text: 'John Doe',
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        drawerItems: <Widget>[
          ListTile(
            title: Text('Buttons'),
            onTap: () {
              setState(() {
                highlightWidget = ButtonsScreen();
              });
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Text Fields'),
            onTap: () {
              setState(() {
                highlightWidget = TextFieldsScreen();
              });
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cards'),
            onTap: () {
              setState(() {
                highlightWidget = CardsScreen();
              });
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              setState(() {
                highlightWidget = ProfileScreen();
              });
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Icons'),
            onTap: () {
              setState(() {
                highlightWidget = IconsScreen();
              });
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
        drawerFooter: ListTile(
          title: Text('Sample Menu'),
        ),
      ),
    );
  }
}
