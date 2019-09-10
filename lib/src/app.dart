import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'screen/home_screen/home_screen.dart';
import 'screen/login_screen.dart';
import 'screen/register_screen.dart';
import 'util/shared_pref_helper.dart';
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
    return MaterialApp(
      onGenerateRoute: _routes,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FutureBuilder<String>(
        future: SharedPreferencesHelper.getToken(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          return HomeScreen();
        },
      ),
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
        return HomeScreen();
      });
    } else if (settings.name == Routes.login) {
      return MaterialPageRoute(builder: (context) {
        return LoginScreen();
      });
    } else if (settings.name == Routes.tabview) {
      return MaterialPageRoute(builder: (context) {
        return RegisterScreen();
      });
    }

    return MaterialPageRoute(builder: (context) {
      return RegisterScreen();
    });
  }
}
