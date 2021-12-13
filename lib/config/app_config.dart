import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  AppConfig._();

  // ignore: non_constant_identifier_names
  static final String ENV_NAME = dotenv.env["ENV_NAME"] ?? "";

  static bool isInited = false;

  static Future<void> init(String env) async {
    await dotenv.load(fileName: env);
    isInited = true;
  }
}
