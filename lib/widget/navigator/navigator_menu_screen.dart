import 'package:atmaja_flutter_demo/router/app_router.dart';
import 'package:flutter/material.dart';

class NavigatorMenuScreen extends StatelessWidget {
  const NavigatorMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Navigator Demo"),
        ),
        body: _createMenuWidget(context),
      );

  _createMenuWidget(BuildContext context) => Column(
        children: [
          _createButton(context, "Push",
              () => Navigator.of(context).pushNamed(AppRouter.NAVIGATOR_PUSH)),
          _createButton(context, "Push then pop", () async {
            final navigator = Navigator.of(context);
            navigator.pushNamed(AppRouter.NAVIGATOR_PUSH);
            await Future.delayed(const Duration(seconds: 1));
            navigator.pop();
          }),
          _createButton(context, "Push and Remove Until", () async {
            final navigator = Navigator.of(context);
            navigator.pushNamedAndRemoveUntil(AppRouter.NAVIGATOR_PUSH,
                (route) => route.settings.name != AppRouter.NAVIGATOR);
          })
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
