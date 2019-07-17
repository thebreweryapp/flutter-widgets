import 'package:flutter_dotenv/flutter_dotenv.dart';

final parseAppId = DotEnv().env["parse_app_id"];
final parseMasterId = DotEnv().env["parse_master_id"];
final parseServerUrl = DotEnv().env["parse_server_url"];
