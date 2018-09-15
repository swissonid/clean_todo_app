import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:todo_domain/domain.dart';

import 'mocks.dart';

void main() {
  group('Create Todo Tests', () {
    DeleteTodoUseCase deleteUseCase;
    TodoRepository todoRepository;
    ToDo todo;

    setUp(() {
      todoRepository = TodoRepoMock();
      deleteUseCase = DeleteTodoUseCase(todoRepository);
      todo = TodoMock();
    });

    test('should not be null', () {
      expect(deleteUseCase, isNotNull);
    });

    test('should call save on the repo', () {
      deleteUseCase.runWith(todo);
      verify(todoRepository.delete(todo));
    });
  });
}
