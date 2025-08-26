import 'package:example_clean_architecture/core/di/di.dart';
import 'package:example_clean_architecture/domain/usecase/usecase.dart';
import 'package:example_clean_architecture/presentation/bloc/bloc.dart';
import 'package:example_clean_architecture/presentation/screen/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    setup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BlocProvider(
        create: (context) => getIt<TodoBloc>(),
        child: TodoScreen(),
      ),
    );
  }
}
