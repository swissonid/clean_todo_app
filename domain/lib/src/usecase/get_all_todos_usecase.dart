import 'dart:async';

import 'package:domain/domain.dart';

class GetAllTodosUseCase {
  final TodoRepository _repo;
  GetAllTodosUseCase(this._repo): assert(_repo != null);

  Future<List<Todo>> run() {
    return _repo.todos();
  }
}
