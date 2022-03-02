import 'package:ekko/infrastructure/dal/services/data/todos.data.dart';

class TodosModels {
  final int userId, id;
  final String title;
  final bool completed;

  TodosModels({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory TodosModels.fromData(TodosData data) {
    return TodosModels(
      userId: data.userId,
      id: data.id,
      title: data.title,
      completed: data.completed,
    );
  }
}
