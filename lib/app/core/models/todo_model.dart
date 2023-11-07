// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:mobx/mobx.dart';

part 'todo_model.g.dart';

class TodoModel = TodoModelBase with _$TodoModel;

abstract class TodoModelBase with Store {
  @observable
  String title;
  TodoModelBase(this.title);
  @action
  createTitle(String newTitle) => title = newTitle;
  factory TodoModelBase.toMapFromModel(Map<String, dynamic> map) {
    return TodoModel(map["title"]);
  }

  Map<String, dynamic> toMap() {
    return {"title": title};
  }
}
