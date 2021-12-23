import 'package:atmaja_flutter_demo/store/counter_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class MobxReactionScreen extends StatelessWidget {
  final _store = CounterStore();

  MobxReactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    reaction((_) => _store.counter, (int newValue) {
      if (newValue == 0 || newValue >= 5) {
        print(_store.counter);
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobx Reaction"),
      ),
      body: _createMenuWidget(context),
    );
  }

  _createMenuWidget(BuildContext context) => Column(
        children: [
          Observer(builder: (_) => Text("counter: ${_store.counter}")),
          _createButton(context, "Add Counter", () => _store.increment())
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
