import 'package:brewery_flutter_widget/src/home.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'screen/login_screen.dart';
import 'routes.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  AppState() {
    initParse();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // var user = ParseUser.currentUser();

    // var screen;

    // if (user != null) {
    //   screen = HomePage();
    // } else {
    //   screen = LoginScreen();
    // }
    return MaterialApp(
      onGenerateRoute: _routes,
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
      home: LoginScreen(),
    );
  }

  initParse() async {
    await Parse().initialize(DotEnv().env['app_id'], DotEnv().env['parse_url'],
        masterKey: DotEnv().env['master_key'],
        debug: true,
        coreStore: await CoreStoreSembastImp.getInstance());
  }

  Route _routes(RouteSettings settings) {
    if (settings.name == Routes.home) {
      return MaterialPageRoute(builder: (context) {
        return HomePage();
      });
    }
  }
}
