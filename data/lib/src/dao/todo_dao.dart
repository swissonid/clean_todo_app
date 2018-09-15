import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_domain/domain.dart';
import 'package:uuid/uuid.dart';

part 'todo_dao.g.dart';

abstract class TodoDao implements ToDo, Built<TodoDao, TodoBuilder> {
  TodoDao._();

  factory TodoDao([updates(TodoBuilder b)]) => new _$Todo((b) => b
    ..id = Uuid().v1()
    ..status = 'OPEN'
    ..description = ''
    ..update(updates));

  static TodoDao withTitle(String title) {
    return TodoDao((b) => b..title = title);
  }

  static Serializer<TodoDao> get serializer => _$todoSerializer;
}
