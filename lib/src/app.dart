import 'package:brewery_flutter_widget/src/widgets/buttons_page.dart';
import 'package:brewery_flutter_widget/src/widgets/textfields_page.dart';
import 'package:flutter/material.dart';
import 'widgets/buttons_page.dart';
import 'widgets/textfields_page.dart';
import 'widgets/cards_page.dart';
import 'widgets/drawer_header.dart';
import 'widgets/brewery_drawer.dart';
import 'widgets/profile_page.dart';
import 'widgets/brewery_login.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String title = "Flutter Demo Home Page";
  Widget highlightWidget = Text('My Page!');

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
            title: Text('Login Template'),
            onTap: () {
              setState(() {
                highlightWidget = BreweryLoginWidget();
              });
              // Then close the drawer
              Navigator.pop(context);
            },
          )
        ],
        drawerFooter: ListTile(
          title: Text('Sample Menu'),
        ),
      ),
    );
  }
}
