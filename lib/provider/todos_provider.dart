import 'package:flutter/widgets.dart';

import '../model/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(
      createdTime: DateTime.now(),
      title: 'Dormir',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Comer',
      description: 'Gosto mutcho',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Academia',
      description: 'Foda pra cacete',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Codar',
      description: 'Flutter e Dart',
    ),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
}
