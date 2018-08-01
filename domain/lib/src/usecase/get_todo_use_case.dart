import 'dart:async';

import 'package:domain/domain.dart';

class GetTodoUseCase {
  final TodoRepository _repo;
  GetTodoUseCase(this._repo) : assert(_repo != null);

  Future<Todo> runWith(String id) {
    return _repo.todo(id);
  }
}
