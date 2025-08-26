import 'package:example_clean_architecture/data/data_source/remote_data_source/todos_data_source.dart';
import 'package:example_clean_architecture/domain/entity/todo_entity.dart';
import 'package:example_clean_architecture/domain/repository/repository.dart';

class RepositoryImpl extends Repository {
  final TodosDataSource dataSource;

  RepositoryImpl({required this.dataSource});
  @override
  Future<List<TodoEntity>> getAllTodos() {
    return dataSource.getAllTodos();
  }
}
