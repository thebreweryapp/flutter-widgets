import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginStorage {
  static final KEY_TOKEN = "token";

  static var storage = FlutterSecureStorage();

  static saveToken(String token) async {
    await storage.write(key: KEY_TOKEN, value: token);
  }

  static Future<String> getToken() async {
    return await storage.read(key: KEY_TOKEN);
  }
}
