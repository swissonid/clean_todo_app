import 'dart:async';

import 'package:todo_domain/domain.dart';

class SaveTodoUseCase {
  final TodoRepository _repo;
  SaveTodoUseCase(this._repo) : assert(_repo != null);

  Future<void> runWith(ToDo todo) {
    return _repo.save(todo);
  }
}
