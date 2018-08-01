import 'dart:async';

import 'package:domain/domain.dart';

abstract class TodoRepository {
  Future<List<Todo>> todos();
  Future<Todo> todo(String id);
  //Create or update the todo
  Future<Null> save(Todo todo);
  Future<Null> delete(Todo todo);
}
