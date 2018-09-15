import 'package:todo_domain/domain.dart';

class NoSuchTodoItemError extends Error {
  final ToDo _toDoItem;

  NoSuchTodoItemError([this._toDoItem]);
}
