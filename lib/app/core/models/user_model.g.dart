// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserModel on UserModelBase, Store {
  late final _$usernameAtom =
      Atom(name: 'UserModelBase.username', context: context);

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: 'UserModelBase.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$UserModelBaseActionController =
      ActionController(name: 'UserModelBase', context: context);

  @override
  dynamic changeUserName(String newUserName) {
    final _$actionInfo = _$UserModelBaseActionController.startAction(
        name: 'UserModelBase.changeUserName');
    try {
      return super.changeUserName(newUserName);
    } finally {
      _$UserModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePassword(String newPasword) {
    final _$actionInfo = _$UserModelBaseActionController.startAction(
        name: 'UserModelBase.changePassword');
    try {
      return super.changePassword(newPasword);
    } finally {
      _$UserModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username},
password: ${password}
    ''';
  }
}
