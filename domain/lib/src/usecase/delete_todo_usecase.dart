import 'dart:async';

import 'package:domain/domain.dart';

class DeleteTodoUseCase {
  final TodoRepository _repo;
  DeleteTodoUseCase(this._repo) : assert(_repo != null);

  Future<Null> runWith(Todo todo) {
    return _repo.delete(todo);
  }
}
