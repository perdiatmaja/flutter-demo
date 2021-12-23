import 'package:atmaja_flutter_demo/widget/mainmenu_screen.dart';
import 'package:atmaja_flutter_demo/widget/navigator/navigator_menu_screen.dart';
import 'package:atmaja_flutter_demo/widget/navigator/navigator_push.dart';
import 'package:atmaja_flutter_demo/widget/state/mobx/mobx_autorun_screen.dart';
import 'package:atmaja_flutter_demo/widget/state/mobx/mobx_menu_screen.dart';
import 'package:atmaja_flutter_demo/widget/state/mobx/mobx_reaction_screen.dart';
import 'package:atmaja_flutter_demo/widget/state/mobx/mobx_when_screen.dart';
import 'package:atmaja_flutter_demo/widget/state/state_menu_screen.dart';
import 'package:atmaja_flutter_demo/widget/state/mobx/mobx_widget_screen.dart';
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
  // ignore: constant_identifier_names
  static const String STATE_MOBX_WIDGET = "$STATE_MOBX/widget";
  // ignore: constant_identifier_names
  static const String STATE_MOBX_AUTORUN = "$STATE_MOBX/autorun";
  // ignore: constant_identifier_names
  static const String STATE_MOBX_REACTION = "$STATE_MOBX/reaction";
  // ignore: constant_identifier_names
  static const String STATE_MOBX_WHEN = "$STATE_MOBX/when";

  static generateRoute() => <String, WidgetBuilder>{
        HOME: (_) => const MainmenuScreen(),
        NAVIGATOR: (_) => const NavigatorMenuScreen(),
        NAVIGATOR_PUSH: (_) => const NavigatorPush(),
        STATE: (_) => const StateMenuScreen(),
        STATE_VANILA: (_) => const StateVanilaScreen(),
        STATE_MOBX: (_) => const MobxMenuScreen(),
        STATE_MOBX_WIDGET: (_) => MobxWidgetScreen(),
        STATE_MOBX_AUTORUN: (_) => MobxAutorunScreen(),
        STATE_MOBX_REACTION: (_) => MobxReactionScreen(),
        STATE_MOBX_WHEN: (_) => MobxWhenScreen(),
      };
}
