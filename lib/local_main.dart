import 'package:atmaja_flutter_demo/main_app_screen.dart';
import 'package:atmaja_flutter_demo/widget/mainmenu_screen.dart';
import 'package:flutter/material.dart';
import 'package:atmaja_flutter_demo/config/app_config.dart';

void main() async {
  await AppConfig.init(".env.local");
  runApp(const MainAppScreen());
}
