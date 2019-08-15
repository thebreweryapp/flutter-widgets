import 'package:brewery_flutter_widget/src/util/shared_pref_helper.dart';
import 'package:flutter/material.dart';
import '../widgets/brewery_register.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import '../routes.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegisterState();
}

class RegisterState extends State<RegisterScreen> {
  var _username = "";
  var _password = "";
  var _error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            BreweryRegisterWidget(
              usernameHint: "Email",
              usernameOnChangeListener: (text) {
                _username = text;
              },
              passwordOnChangeListener: (text) {
                _password = text;
                if (text.length < 4) {
                  return "Password too short";
                } else {
                  // TODO Other validators
                }
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
    var user = await ParseUser(_username, _password, _username).create();
    var token = (user.result as ParseUser).sessionToken;
    if (user.success) {
      await SharedPreferencesHelper.setToken(token);
      Navigator.pushNamed(context, Routes.login);
    }
  }
}
