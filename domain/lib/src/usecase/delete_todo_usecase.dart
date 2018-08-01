import 'dart:async';

import 'package:todo_domain/domain.dart';

class DeleteTodoUseCase {
  final TodoRepository _repo;
  DeleteTodoUseCase(this._repo) : assert(_repo != null);

  Future<Null> runWith(TodoEntity todo) {
    return _repo.delete(todo);
  }
}
