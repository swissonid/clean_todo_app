import 'package:domain/domain.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'mocks.dart';

void main() {
  group('Create Todo Tests', () {
    SaveTodoUseCase createTodoUseCase;
    TodoRepository todoRepository;
    Todo todo;

    setUp(() {
      todoRepository = TodoRepoMock();
      createTodoUseCase = SaveTodoUseCase(todoRepository);
      todo = TodoMock();
    });

    test('should not be null', () {
      expect(createTodoUseCase, isNotNull);
    });

    test('should call save on the repo', () {
      createTodoUseCase.runWith(todo);
      verify(todoRepository.save(any));
    });
  });
}
