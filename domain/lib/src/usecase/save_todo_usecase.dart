import 'dart:async';

import 'package:domain/domain.dart';

class SaveTodoUseCase {
  final TodoRepository _repo;
  SaveTodoUseCase(this._repo) : assert(_repo != null);

  Future<Null> runWith(Todo todo) {
    return _repo.save(todo);
  }
}
