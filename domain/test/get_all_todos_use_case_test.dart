import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:todo_domain/domain.dart';

import 'mocks.dart';

void main() {
  group('Create Todo Tests', () {
    GetAllTodosUseCase getAllTodosUseCase;
    TodoRepository todoRepository;

    setUp(() {
      todoRepository = TodoRepoMock();
      getAllTodosUseCase = GetAllTodosUseCase(todoRepository);
    });

    test('should not be null', () {
      expect(getAllTodosUseCase, isNotNull);
    });

    test('should call save on the repo', () {
      getAllTodosUseCase.run();
      verify(todoRepository.todos());
    });
  });
}
