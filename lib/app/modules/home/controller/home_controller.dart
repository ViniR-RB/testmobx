import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testmobx/app/core/models/todo_model.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  TodoModel todo = TodoModel("");

  @observable
  ObservableList<TodoModel> listTodos = ObservableList.of([]);

  getAllTodos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String todoJson = prefs.getString("todos") ?? "";
    if (todoJson.isNotEmpty) {
      List<dynamic> todoMapList = json.decode(todoJson);
      List<TodoModelBase> todoModel =
          todoMapList.map((e) => TodoModelBase.toMapFromModel(e)).toList();
      todoModel.map((e) => listTodos.add(TodoModel(e.title))).toList();
    }
  }

  addTodo() async {
    listTodos.add(todo);
    await saveTodoInShared();
    todo = TodoModel("");
  }

  @action
  Future createTodo() async => await addTodo();

  @action
  deleteTodo(int indexList) async {
    listTodos.removeAt(indexList);
    await saveTodoInShared();
  }

  Future<void> saveTodoInShared() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<Map<String, dynamic>> todosMapList =
        listTodos.map(((element) => element.toMap())).toList();
    String todoJson = json.encode(todosMapList);
    await prefs.setString("todos", todoJson);
  }
}
