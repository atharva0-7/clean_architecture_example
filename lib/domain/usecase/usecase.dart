import 'package:example_clean_architecture/domain/entity/todo_entity.dart';
import 'package:example_clean_architecture/domain/repository/repository.dart';

class Usecase {
  final Repository repository;

  Usecase({required this.repository});
  Future<List<TodoEntity>> getAllTodos() {
    return repository.getAllTodos();
  }
}
