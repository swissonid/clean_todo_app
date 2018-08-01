import 'dart:async';

import 'package:todo_domain/domain.dart';

class GetTodoUseCase {
  final TodoRepository _repo;
  GetTodoUseCase(this._repo) : assert(_repo != null);

  Future<TodoEntity> runWith(String id) {
    return _repo.todo(id);
  }
}
