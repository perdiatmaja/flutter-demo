import 'package:atmaja_flutter_demo/router/app_router.dart';
import 'package:flutter/material.dart';

class MainmenuScreen extends StatelessWidget {
  const MainmenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Demo"),
        ),
        body: _createMenuWidget(context),
      );

  _createMenuWidget(BuildContext context) => Column(
        children: [
          _createButton(context, "Navigator", AppRouter.NAVIGATOR),
          _createButton(context, "State", AppRouter.STATE),
        ],
      );

  _createButton(BuildContext context, String buttonName, String route) =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            onPressed: () => Navigator.of(context).pushNamed(route),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(buttonName),
            )),
      );
}
