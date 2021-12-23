import 'package:atmaja_flutter_demo/router/app_router.dart';
import 'package:atmaja_flutter_demo/store/counter_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

// ignore: must_be_immutable
class MobxWidgetScreen extends StatelessWidget {
  final _store = CounterStore();
  ReactionDisposer? _reactionDisposer;

  MobxWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Mobx Demo"),
        ),
        body: _createMenuWidget(context),
      );

  _createMenuWidget(BuildContext context) => Column(
        children: [
          Observer(builder: (_) {
            if (_store.counter > 5 && !_store.nonWidgetReaction) {
              Navigator.of(context).pushNamed(AppRouter.NAVIGATOR_PUSH);
            }

            return Padding(
              padding: const EdgeInsets.all(16),
              child: Text('counter: ${_store.counter.toString()}'),
            );
          }),
          Observer(builder: (_) {
            _runNonWidgetReaction(context);

            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text("Non-Widget Observer"),
                  Text(_store.nonWidgetReaction ? "ON" : "OFF")
                ],
              ),
            );
          }),
          _createButton(context, "Add", () => _store.increment()),
          _createButton(context, "Reset Counter", () => _store.reset()),
          _createButton(context, "Toggle Non-Widget Observer",
              () => _store.setNonWidgetReaction(!_store.nonWidgetReaction))
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

  _runNonWidgetReaction(BuildContext context) {
    _reactionDisposer?.call();

    if (_store.nonWidgetReaction) {
      _reactionDisposer = reaction((_) => _store.counter, (int newValue) {
        if (newValue >= 5) {
          Navigator.of(context).pushNamed(AppRouter.NAVIGATOR_PUSH);
        }
      });
    }
  }
}
