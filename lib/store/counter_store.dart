import 'package:mobx/mobx.dart';

part "counter_store.g.dart";

class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store {
  @observable
  int counter = 0;

  @observable
  bool _nonWidgetReaction = false;

  @computed
  bool get nonWidgetReaction => _nonWidgetReaction;

  @action
  setNonWidgetReaction(bool nonWidgetReaction) {
    _nonWidgetReaction = nonWidgetReaction;
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
