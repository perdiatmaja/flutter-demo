import 'package:atmaja_flutter_demo/router/app_router.dart';
import 'package:flutter/material.dart';

class MobxMenuScreen extends StatelessWidget {
  const MobxMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Mobx Demo"),
        ),
        body: _createMenuWidget(context),
      );

  _createMenuWidget(BuildContext context) => Column(
        children: [
          _createButton(
              context,
              "Widget Reaction",
              () =>
                  Navigator.of(context).pushNamed(AppRouter.STATE_MOBX_WIDGET)),
          _createButton(
              context,
              "Autorun",
              () => Navigator.of(context)
                  .pushNamed(AppRouter.STATE_MOBX_AUTORUN)),
          _createButton(
              context,
              "Reaction",
              () => Navigator.of(context)
                  .pushNamed(AppRouter.STATE_MOBX_REACTION)),
          _createButton(context, "When",
              () => Navigator.of(context).pushNamed(AppRouter.STATE_MOBX_WHEN))
        ],
      );

  _createButton(
          BuildContext context, String buttonName, Function() onPressed) =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(buttonName),
            )),
      );
}
