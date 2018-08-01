import 'dart:async';

import 'package:domain/domain.dart';

class TodoDAO implements Todo {
  final String _id;
  TodoDAO(this._id);
  @override
  String get Id => _id;

  @override
  String get description => 'Descritpion of $_id';

  @override
  Status get status => Status.OPEN;

  @override
  String get title => 'Title of $_id';

  @override
  String toString() {
    return 'Todo: { \n\t id: $Id, \n\t title: $title, \n\t description: $description, \n\t status: $status \n\t}';
  }
}

class InMemoryRepo implements TodoRepository {
  Set<Todo> _todos;
  InMemoryRepo() {
    final List<Todo> somtTodos = List.generate(3, (index) => TodoDAO(index.toString()));
    _todos = Set.from(somtTodos);
  }
  @override
  Future<Null> delete(Todo todo) {
    _todos.remove(todo);
    return Future.value(null);
  }

  @override
  Future<Null> save(Todo todo) {
    _todos.add(todo);
    return Future.value(null);
  }

  @override
  Future<Todo> todo(String id) {
    return Future.value(_todos.firstWhere((Todo todo) => todo.Id == id));
  }

  @override
  Future<List<Todo>> todos() {
    return Future.value(_todos.toList());
  }
}
