// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destinationStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DestinationStore on _DestinationStore, Store {
  final _$indexAtom = Atom(name: '_DestinationStore.index');

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  final _$_DestinationStoreActionController =
      ActionController(name: '_DestinationStore');

  @override
  void changeIndex(int newIndex) {
    final _$actionInfo = _$_DestinationStoreActionController.startAction(
        name: '_DestinationStore.changeIndex');
    try {
      return super.changeIndex(newIndex);
    } finally {
      _$_DestinationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index}
    ''';
  }
}
