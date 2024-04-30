import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/helpers/helpers.dart';
import 'package:river_app/domain/entities/todos.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

final todosProvider = StateNotifierProvider<TodosNotifier, List<Todos>>((ref) {
  return TodosNotifier();
});

class TodosNotifier extends StateNotifier<List<Todos>> {
  TodosNotifier()
      : super([
          Todos(
              id: uuid.v4(),
              description: RandomNameGeneratorHelper.getRandomName(),
              completedAt: null),
          Todos(
              id: uuid.v4(),
              description: RandomNameGeneratorHelper.getRandomName(),
              completedAt: null),
          Todos(
              id: uuid.v4(),
              description: RandomNameGeneratorHelper.getRandomName(),
              completedAt: null),
          Todos(
              id: uuid.v4(),
              description: RandomNameGeneratorHelper.getRandomName(),
              completedAt: DateTime.now()),
        ]);

  void addTodo() {
    state = [
      ...state,
      Todos(
          id: uuid.v4(),
          description: RandomNameGeneratorHelper.getRandomName(),
          completedAt: null),
    ];
  }

  void toggleTodo(String id) {
    state = state.map((todo) {
      if (todo.id != id) return todo;
      if (todo.done) return todo.copyWith(completedAt: null);
      return todo.copyWith(completedAt: DateTime.now());
    }).toList();
  }
}
