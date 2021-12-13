import 'package:mobx/mobx.dart';

part "counter_store.g.dart";

class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store {
  @observable
  int counter = 0;

  @observable
  bool autorun = false;

  @action
  setAutoRun(bool autorun) {
    this.autorun = autorun;
  }

  @action
  increment() {
    counter += 1;
  }

  @action
  reset() {
    counter = 0;
  }
}
