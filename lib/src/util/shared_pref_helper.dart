import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static final String _keyToken = "token";

  static Future<bool> setToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(_keyToken, token);
  }

  static Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(_keyToken);
  }
}
