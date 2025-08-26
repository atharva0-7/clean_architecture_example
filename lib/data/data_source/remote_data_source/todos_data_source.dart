import 'package:example_clean_architecture/data/model/todo_model.dart';
import 'package:http/http.dart' as http;

class TodosDataSource {
  Future<List<TodoModel>> getAllTodos() async {
    final response =await  http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos'),
    );

    return [TodoModel(userId: 1, id: 1, title: 'title', completed: true)];
  }
}
