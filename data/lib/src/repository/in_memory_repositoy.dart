import 'dart:async';

import 'package:todo_domain/domain.dart';

class InMemoryRepo implements TodoRepository {
  Set<ToDo> _todos;

  @override
  Future<Null> delete(ToDo todo) {
    if(_todos.remove(todo)) return Future.value(null);
    else return throw
  }

  @override
  Future<Null> save(ToDo todo) {
    // TODO: implement save
  }

  @override
  Future<ToDo> todo(String id) {
    // TODO: implement todo
  }

  @override
  Future<List<ToDo>> todos() {
    // TODO: implement todos
  }
}
