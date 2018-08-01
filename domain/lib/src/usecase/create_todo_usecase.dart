import 'dart:async';

import 'package:domain/domain.dart';
import 'package:domain/src/repository/todo_repositoy.dart';

class CreateTodoUseCase {
  final TodoRepository _repo;
  CreateTodoUseCase(this._repo);

  Future<Null> runWith(Todo todo) {
    return _repo.save(todo);
  }
}
