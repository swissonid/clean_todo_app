import 'package:data/src/dao/todo_dao.dart';
import 'package:test/test.dart';

main() {
  group('Todo Tests', () {
    test('shoul generate an Uuid', () {
      final todo = TodoDao.withTitle('Test');
      expect(todo.id, isNotNull);
      expect(todo.id, isNotEmpty);
      expect(todo.status, 'OPEN');
      expect(todo.description, isEmpty);

      final todo2 = TodoDao((b) => b..title = 'Test');
      expect(todo == todo2, isFalse);

      final builder = todo2.toBuilder();
      builder.title = 'Test 2';
      final todo3 = builder.build();
      expect(todo2 == todo3, isFalse);
      expect(todo3.id == todo2.id, isTrue);
    });
  });
}
