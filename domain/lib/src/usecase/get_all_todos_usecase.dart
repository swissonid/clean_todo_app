import 'dart:async';

import 'package:todo_domain/domain.dart';

class GetAllTodosUseCase {
  final TodoRepository _repo;
  GetAllTodosUseCase(this._repo) : assert(_repo != null);

  Future<List<ToDo>> run() {
    return _repo.todos();
  }
}
