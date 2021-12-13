// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterStore on _CounterStore, Store {
  Computed<bool>? _$nonWidgetReactionComputed;

  @override
  bool get nonWidgetReaction => (_$nonWidgetReactionComputed ??= Computed<bool>(
          () => super.nonWidgetReaction,
          name: '_CounterStore.nonWidgetReaction'))
      .value;

  final _$counterAtom = Atom(name: '_CounterStore.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$_nonWidgetReactionAtom =
      Atom(name: '_CounterStore._nonWidgetReaction');

  @override
  bool get _nonWidgetReaction {
    _$_nonWidgetReactionAtom.reportRead();
    return super._nonWidgetReaction;
  }

  @override
  set _nonWidgetReaction(bool value) {
    _$_nonWidgetReactionAtom.reportWrite(value, super._nonWidgetReaction, () {
      super._nonWidgetReaction = value;
    });
  }

  final _$_CounterStoreActionController =
      ActionController(name: '_CounterStore');

  @override
  dynamic setNonWidgetReaction(bool nonWidgetReaction) {
    final _$actionInfo = _$_CounterStoreActionController.startAction(
        name: '_CounterStore.setNonWidgetReaction');
    try {
      return super.setNonWidgetReaction(nonWidgetReaction);
    } finally {
      _$_CounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic increment() {
    final _$actionInfo = _$_CounterStoreActionController.startAction(
        name: '_CounterStore.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic reset() {
    final _$actionInfo = _$_CounterStoreActionController.startAction(
        name: '_CounterStore.reset');
    try {
      return super.reset();
    } finally {
      _$_CounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
nonWidgetReaction: ${nonWidgetReaction}
    ''';
  }
}
