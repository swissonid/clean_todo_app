import 'dart:async';

import 'package:todo_domain/domain.dart';

class GetAllTodosUseCase {
  final TodoRepository _repo;
  GetAllTodosUseCase(this._repo) : assert(_repo != null);

  Future<List<TodoEntity>> run() {
    return _repo.todos();
  }
}
