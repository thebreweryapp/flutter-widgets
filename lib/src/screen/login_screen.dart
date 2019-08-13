import 'package:flutter/material.dart';
import '../widgets/brewery_login.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import '../routes.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<LoginScreen> {
  var _username = "";
  var _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            BreweryLoginWidget(
              usernameHint: "Username",
              usernameOnChangeListener: (text) {
                _username = text;
              },
              passwordOnChangeListener: (text) {
                _password = text;
              },
              submitOnPressed: () {
                login(context);
                // Navigator.pushNamed(context, Routes.home);
              },
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }

  login(BuildContext context) async {
    var user = await ParseUser(_username, _password, "").login();
    if (user.success) {
      Navigator.pushNamed(context, Routes.home);
      // TODO login
      print("LOGIN HERE");
    }
  }
}
