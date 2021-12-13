import 'package:flutter/material.dart';

class StateVanilaScreen extends StatefulWidget {
  const StateVanilaScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StateVanilaScreen();
}

class _StateVanilaScreen extends State<StateVanilaScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text("State Vanila Demo"),
      ),
      body: _createMenuWidget());

  _createMenuWidget() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(_counter.toString()),
          ),
          _createButton("Add", () {
            setState(() {
              _counter += 1;
            });
          }),
          _createButton("Reset Counter", () {
            setState(() {
              _counter = 0;
            });
          })
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
