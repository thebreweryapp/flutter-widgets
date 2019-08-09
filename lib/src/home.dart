import 'package:brewery_flutter_widget/src/widgets/buttons_page.dart';
import 'package:brewery_flutter_widget/src/widgets/textfields_page.dart';
import 'package:flutter/material.dart';
import 'widgets/buttons_page.dart';
import 'widgets/textfields_page.dart';
import 'widgets/cards_page.dart';
import 'widgets/drawer_header.dart';
import 'widgets/brewery_drawer.dart';
import 'widgets/profile_page.dart';
import 'widgets/icons_page.dart';

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
                highlightWidget = ButtonsPage();
              });
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Text Fields'),
            onTap: () {
              setState(() {
                highlightWidget = TextFieldsPage();
              });
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cards'),
            onTap: () {
              setState(() {
                highlightWidget = CardsPage();
              });
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              setState(() {
                highlightWidget = ProfilePage();
              });
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Icons'),
            onTap: () {
              setState(() {
                highlightWidget = IconsPage();
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