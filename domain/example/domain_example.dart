import 'package:todo_domain/domain.dart';

import 'in_memory_repo.dart';

final todoRepos = InMemoryRepo();
final getTodo = GetTodoUseCase(todoRepos);
final getAllTodo = GetAllTodosUseCase(todoRepos);
final saveTodo = SaveTodoUseCase(todoRepos);
final deleteTodo = DeleteTodoUseCase(todoRepos);

main() async {
  getAllTodo.run().then(printAllTodos);

  getTodo.runWith('1').then((todo) {
    print("\nGet Todo 1");
    print(todo);
  });

  final todo = await getTodo.runWith('1');
  await deleteTodo.runWith(todo);
  print('\n Deleted \n $todo');
  getAllTodo.run().then(printAllTodos);

  await saveTodo.runWith(TodoDAO("3"));
  getAllTodo.run().then(printAllTodos);
}

void printAllTodos(List<TodoEntity> todos) {
  print('Get All Todos ${todos.length}');
  todos.forEach((todo) => print(todo));
}
