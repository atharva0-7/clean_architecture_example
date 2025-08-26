import 'package:example_clean_architecture/domain/entity/todo_entity.dart';

class TodoModel extends TodoEntity {
  TodoModel({
    required int userId,
    required int id,
    required String title,
    required bool completed,
  }) : super(userId: userId, id: id, title: title, completed: completed);

  factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
    userId: json["userId"] as int,
    id: json["id"] as int,
    title: json["title"] as String,
    completed: json["completed"] as bool,
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}
