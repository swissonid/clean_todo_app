import 'dart:async';

import 'package:todo_domain/domain.dart';

abstract class TodoRepository {
  Future<List<TodoEntity>> todos();
  Future<TodoEntity> todo(String id);
  //Create or update the todo
  Future<Null> save(TodoEntity todo);
  Future<Null> delete(TodoEntity todo);
}
