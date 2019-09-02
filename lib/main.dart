import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'src/app.dart';

Future main() async {
  // debugPaintSizeEnabled = true;
  await DotEnv().load('.env.craft_test_app');
  runApp(App());
}
