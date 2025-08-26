import 'package:example_clean_architecture/domain/entity/todo_entity.dart';
import 'package:example_clean_architecture/domain/usecase/usecase.dart';
import 'package:example_clean_architecture/presentation/bloc/event.dart';
import 'package:example_clean_architecture/presentation/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final Usecase usecase;
  TodoBloc(this.usecase) : super(LoadingTodoState()) {
    on<GetAllTodosEvent>((event, emit) async {
      final List<TodoEntity> todoList = await usecase.getAllTodos();
      emit(LoadedTodoState(todoLists: todoList));
    });
  }
}
