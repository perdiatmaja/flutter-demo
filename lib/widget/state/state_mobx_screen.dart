import 'package:atmaja_flutter_demo/router/app_router.dart';
import 'package:atmaja_flutter_demo/store/counter_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class StateMobxScreen extends StatefulWidget {
  const StateMobxScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StateMobxScreen();
}

class _StateMobxScreen extends State<StateMobxScreen> {
  final _store = CounterStore();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Mobx Demo"),
        ),
        body: Observer(builder: (_) {
          if (_store.autorun) {
            autorun((_) {
              if (_store.counter > 5) {
                Navigator.of(context).pushNamed(AppRouter.NAVIGATOR_PUSH);
              }
            });
          }

          return _createMenuWidget();
        }),
      );

  _createMenuWidget() => Column(
        children: [
          Observer(builder: (_) {
            if (_store.counter > 5 && !_store.autorun) {
              Navigator.of(context).pushNamed(AppRouter.NAVIGATOR_PUSH);
            }

            return Padding(
              padding: const EdgeInsets.all(16),
              child: Text(_store.counter.toString()),
            );
          }),
          Observer(
              builder: (_) => Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(_store.autorun ? "ON" : "OFF"),
                  )),
          _createButton("Add", () => _store.increment()),
          _createButton("Reset Counter", () => _store.reset()),
          _createButton(
              "Toggle Auto Run", () => _store.setAutoRun(!_store.autorun))
        ],
      );

  _createButton(String buttonName, Function() onPressed) => Container(
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
