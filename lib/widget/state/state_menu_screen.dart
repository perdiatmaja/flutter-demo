import 'package:atmaja_flutter_demo/router/app_router.dart';
import 'package:flutter/material.dart';

class StateMenuScreen extends StatelessWidget {
  const StateMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("State Demo"),
        ),
        body: _createMenuWidget(context),
      );

  _createMenuWidget(BuildContext context) => Column(
        children: [
          _createButton(context, "Set State",
              () => Navigator.of(context).pushNamed(AppRouter.STATE_VANILA)),
          _createButton(context, "Mobx",
              () => Navigator.of(context).pushNamed(AppRouter.STATE_MOBX))
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
