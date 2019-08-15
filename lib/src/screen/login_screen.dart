import 'package:flutter/material.dart';
import '../widgets/brewery_login.dart';
import '../util/shared_pref_helper.dart';
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
            Text(
              'CRAFT',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
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
            Text('No account yet?'),
            FlatButton(
              child: Text('Register Now'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, Routes.register);
              },
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }

  login(BuildContext context) async {
    var user = await ParseUser(_username, _password, "").login();
    var token = (user.result as ParseUser).sessionToken;
    if (user.success) {
      await SharedPreferencesHelper.setToken(token);
      Navigator.pushNamed(context, Routes.home);
    }
  }
}
