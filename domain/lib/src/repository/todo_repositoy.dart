import 'dart:async';

import 'package:todo_domain/domain.dart';

abstract class TodoRepository {
  Future<List<ToDo>> todos();
  Future<ToDo> todo(String id);
  //Create or update the todo
  Future<void> save(ToDo todo);
  Future<void> delete(ToDo todo);
}
