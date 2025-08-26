import 'package:example_clean_architecture/domain/entity/todo_entity.dart';

abstract class Repository {
  Future<List<TodoEntity>> getAllTodos();
}
