import 'package:atmaja_flutter_demo/widget/mainmenu_screen.dart';
import 'package:atmaja_flutter_demo/widget/navigator/navigator_menu_screen.dart';
import 'package:atmaja_flutter_demo/widget/navigator/navigator_push.dart';
import 'package:atmaja_flutter_demo/widget/state/state_menu_screen.dart';
import 'package:atmaja_flutter_demo/widget/state/state_mobx_screen.dart';
import 'package:atmaja_flutter_demo/widget/state/state_vanila_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  const AppRouter._();

  // ignore: constant_identifier_names
  static const String HOME = "/";

  // ignore: constant_identifier_names
  static const String NAVIGATOR = "/navigator";
  // ignore: constant_identifier_names
  static const String NAVIGATOR_PUSH = "$NAVIGATOR/push";

  // ignore: constant_identifier_names
  static const String STATE = "/state";
  // ignore: constant_identifier_names
  static const String STATE_VANILA = "$STATE/vanila";
  // ignore: constant_identifier_names
  static const String STATE_MOBX = "$STATE/mobx";

  static generateRoute() => <String, WidgetBuilder>{
        HOME: (_) => const MainmenuScreen(),
        NAVIGATOR: (_) => const NavigatorMenuScreen(),
        NAVIGATOR_PUSH: (_) => const NavigatorPush(),
        STATE: (_) => const StateMenuScreen(),
        STATE_VANILA: (_) => const StateVanilaScreen(),
        STATE_MOBX: (_) => const StateMobxScreen()
      };
}
