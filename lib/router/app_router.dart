import 'package:atmaja_flutter_demo/widget/mainmenu_screen.dart';
import 'package:atmaja_flutter_demo/widget/navigator/navigator_menu_screen.dart';
import 'package:atmaja_flutter_demo/widget/navigator/navigator_push.dart';
import 'package:atmaja_flutter_demo/widget/state/state_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  const AppRouter._();

  static const String HOME = "/";

  static const String NAVIGATOR = "/navigator";
  static const String NAVIGATOR_PUSH = "$NAVIGATOR/push";

  static const String STATE = "/state";

  static generateRoute() => <String, WidgetBuilder>{
        HOME: (_) => const MainmenuScreen(),
        NAVIGATOR: (_) => const NavigatorMenuScreen(),
        NAVIGATOR_PUSH: (_) => const NavigatorPush(),
        STATE: (_) => const StateScreen()
      };
}
