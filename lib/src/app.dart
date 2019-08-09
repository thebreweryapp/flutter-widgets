import 'package:flutter/material.dart';
import 'widgets/brewery_login.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class App extends StatelessWidget {
  App() {
    initParse();
  }
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
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              BreweryLoginWidget(),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }

  initParse() async {
    await Parse().initialize(DotEnv().env['app_id'], DotEnv().env['parse_url'],
        masterKey: DotEnv().env['master_key'],
        debug: true,
        coreStore: await CoreStoreSembastImp.getInstance());
  }
}
