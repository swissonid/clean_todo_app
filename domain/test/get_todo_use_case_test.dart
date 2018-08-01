import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:todo_domain/domain.dart';

import 'mocks.dart';

void main() {
  group('Create Todo Tests', () {
    GetTodoUseCase getTodoUseCase;
    TodoRepository todoRepository;

    setUp(() {
      todoRepository = TodoRepoMock();
      getTodoUseCase = GetTodoUseCase(todoRepository);
    });

    test('should not be null', () {
      expect(getTodoUseCase, isNotNull);
    });

    test('should call save on the repo', () {
      final id = "some ramdon string";
      getTodoUseCase.runWith(id);
      verify(todoRepository.todo(id));
    });
  });
}
