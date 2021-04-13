// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on _Counter, Store {
  final _$counterArrayAtom = Atom(name: '_Counter.counterArray');

  @override
  ObservableList<int> get counterArray {
    _$counterArrayAtom.reportRead();
    return super.counterArray;
  }

  @override
  set counterArray(ObservableList<int> value) {
    _$counterArrayAtom.reportWrite(value, super.counterArray, () {
      super.counterArray = value;
    });
  }

  final _$isFloatingButtonVisibleAtom =
      Atom(name: '_Counter.isFloatingButtonVisible');

  @override
  bool get isFloatingButtonVisible {
    _$isFloatingButtonVisibleAtom.reportRead();
    return super.isFloatingButtonVisible;
  }

  @override
  set isFloatingButtonVisible(bool value) {
    _$isFloatingButtonVisibleAtom
        .reportWrite(value, super.isFloatingButtonVisible, () {
      super.isFloatingButtonVisible = value;
    });
  }

  final _$_CounterActionController = ActionController(name: '_Counter');

  @override
  void incrementCounter(int index) {
    final _$actionInfo = _$_CounterActionController.startAction(
        name: '_Counter.incrementCounter');
    try {
      return super.incrementCounter(index);
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeVisibility() {
    final _$actionInfo = _$_CounterActionController.startAction(
        name: '_Counter.changeVisibility');
    try {
      return super.changeVisibility();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counterArray: ${counterArray},
isFloatingButtonVisible: ${isFloatingButtonVisible}
    ''';
  }
}
