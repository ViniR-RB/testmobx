// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoModel on TodoModelBase, Store {
  late final _$titleAtom = Atom(name: 'TodoModelBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$TodoModelBaseActionController =
      ActionController(name: 'TodoModelBase', context: context);

  @override
  dynamic createTitle(String newTitle) {
    final _$actionInfo = _$TodoModelBaseActionController.startAction(
        name: 'TodoModelBase.createTitle');
    try {
      return super.createTitle(newTitle);
    } finally {
      _$TodoModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title}
    ''';
  }
}
