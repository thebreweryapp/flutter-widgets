import 'dart:convert';

import 'package:flutter/material.dart';

class JsonUtils {
  static dynamic json(
      {@required BuildContext context, @required String filename}) async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/json/$filename.json");
    return jsonDecode(data);
  }
}
