// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backlog_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BacklogStore on _BacklogStore, Store {
  late final _$backLogEntityListAtom =
      Atom(name: '_BacklogStore.backLogEntityList', context: context);

  @override
  ObservableList<BackLogEntity> get backLogEntityList {
    _$backLogEntityListAtom.reportRead();
    return super.backLogEntityList;
  }

  @override
  set backLogEntityList(ObservableList<BackLogEntity> value) {
    _$backLogEntityListAtom.reportWrite(value, super.backLogEntityList, () {
      super.backLogEntityList = value;
    });
  }

  @override
  String toString() {
    return '''
backLogEntityList: ${backLogEntityList}
    ''';
  }
}
