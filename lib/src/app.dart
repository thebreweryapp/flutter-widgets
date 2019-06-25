import 'package:brewery_flutter_widget/src/widgets/flatbutton_page.dart';
import 'package:flutter/material.dart';
import 'widgets/raisedbutton_page.dart';
import 'widgets/textfield_page.dart';

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
      body: Center(child: highlightWidget),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Raised Button'),
              onTap: () {
                setState(() {
                  highlightWidget = RaisedButtonPage();
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Flat Button'),
              onTap: () {
                setState(() {
                  highlightWidget = FlatButtonPage();
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Text Field'),
              onTap: () {
                setState(() {
                  highlightWidget = TextFieldPage();
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
