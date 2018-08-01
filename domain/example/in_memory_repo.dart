import 'dart:async';

import 'package:todo_domain/domain.dart';

class TodoDAO implements TodoEntity {
  final String _id;
  TodoDAO(this._id);
  @override
  String get Id => _id;

  @override
  String get description => 'Descritpion of $_id';

  @override
  String get status => 'OPEN';

  @override
  String get title => 'Title of $_id';

  @override
  String toString() {
    return 'Todo: { \n\t id: $Id, \n\t title: $title, \n\t description: $description, \n\t status: $status \n\t}';
  }
}

class InMemoryRepo implements TodoRepository {
  Set<TodoEntity> _todos;
  InMemoryRepo() {
    final List<TodoEntity> somtTodos =
        List.generate(3, (index) => TodoDAO(index.toString()));
    _todos = Set.from(somtTodos);
  }
  @override
  Future<Null> delete(TodoEntity todo) {
    _todos.remove(todo);
    return Future.value(null);
  }

  @override
  Future<Null> save(TodoEntity todo) {
    _todos.add(todo);
    return Future.value(null);
  }

  @override
  Future<TodoEntity> todo(String id) {
    return Future.value(_todos.firstWhere((TodoEntity todo) => todo.Id == id));
  }

  @override
  Future<List<TodoEntity>> todos() {
    return Future.value(_todos.toList());
  }
}
