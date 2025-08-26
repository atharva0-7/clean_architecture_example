import 'package:example_clean_architecture/presentation/bloc/bloc.dart';
import 'package:example_clean_architecture/presentation/bloc/event.dart';
import 'package:example_clean_architecture/presentation/bloc/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<TodoBloc>(context).add(GetAllTodosEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        if (state is LoadingTodoState) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is LoadedTodoState) {
          return Column(
            children:
                state.todoLists
                    .map((todoElement) => Text(todoElement.title))
                    .toList(),
          );
        }
        return Text('No data');
      },
    );
  }
}
