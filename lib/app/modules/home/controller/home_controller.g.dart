// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$todoAtom =
      Atom(name: 'HomeControllerBase.todo', context: context);

  @override
  TodoModel get todo {
    _$todoAtom.reportRead();
    return super.todo;
  }

  @override
  set todo(TodoModel value) {
    _$todoAtom.reportWrite(value, super.todo, () {
      super.todo = value;
    });
  }

  late final _$listTodosAtom =
      Atom(name: 'HomeControllerBase.listTodos', context: context);

  @override
  ObservableList<TodoModel> get listTodos {
    _$listTodosAtom.reportRead();
    return super.listTodos;
  }

  @override
  set listTodos(ObservableList<TodoModel> value) {
    _$listTodosAtom.reportWrite(value, super.listTodos, () {
      super.listTodos = value;
    });
  }

  late final _$createTodoAsyncAction =
      AsyncAction('HomeControllerBase.createTodo', context: context);

  @override
  Future<dynamic> createTodo() {
    return _$createTodoAsyncAction.run(() => super.createTodo());
  }

  late final _$deleteTodoAsyncAction =
      AsyncAction('HomeControllerBase.deleteTodo', context: context);

  @override
  Future deleteTodo(int indexList) {
    return _$deleteTodoAsyncAction.run(() => super.deleteTodo(indexList));
  }

  @override
  String toString() {
    return '''
todo: ${todo},
listTodos: ${listTodos}
    ''';
  }
}
