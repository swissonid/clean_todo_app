import 'package:domain/domain.dart';
import 'package:domain/src/repository/todo_repositoy.dart';
import 'package:domain/src/usecase/create_todo_usecase.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

class TodoRepoMock extends Mock implements TodoRepository {}

class TodoMock extends Mock implements Todo {}

void main() {
  group('Create Todo Tests', () {
    CreateTodoUseCase createTodoUseCase;
    TodoRepository todoRepository;
    Todo todo;

    setUp(() {
      todoRepository = TodoRepoMock();
      createTodoUseCase = CreateTodoUseCase(todoRepository);
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
