import 'dart:async';

import 'package:todo_domain/domain.dart';

class TodoDAO implements ToDo {
  final String _id;
  TodoDAO(this._id);
  @override
  String get id => _id;

  @override
  String get description => 'Descritpion of $_id';

  @override
  String get status => 'OPEN';

  @override
  String get title => 'Title of $_id';

  @override
  String toString() {
    return 'Todo: { \n\t id: $id, \n\t title: $title, \n\t description: $description, \n\t status: $status \n\t}';
  }
}

class InMemoryRepo implements TodoRepository {
  Set<ToDo> _todos;
  InMemoryRepo() {
    final List<ToDo> somtTodos =
        List.generate(3, (index) => TodoDAO(index.toString()));
    _todos = Set.from(somtTodos);
  }
  @override
  Future<void> delete(ToDo todo) {
    _todos.remove(todo);
    return Future.value(null);
  }

  @override
  Future<void> save(ToDo todo) {
    _todos.add(todo);
    return Future.value(null);
  }

  @override
  Future<ToDo> todo(String id) {
    return Future.value(_todos.firstWhere((ToDo todo) => todo.id == id));
  }

  @override
  Future<List<ToDo>> todos() {
    return Future.value(_todos.toList());
  }
}
