import 'package:example_clean_architecture/domain/entity/todo_entity.dart';

abstract class TodoState {}

class LoadingTodoState extends TodoState {}

class LoadedTodoState extends TodoState {
  final List<TodoEntity> todoLists;

  LoadedTodoState({required this.todoLists});
}

class ErrorTodoState extends TodoState {}
