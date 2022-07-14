import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/todos_provider.dart';
import 'package:todo_app/widgets/todo_widget.dart';

import '../model/todo.dart';

class TodoListWidgets extends StatefulWidget {
  @override
  State<TodoListWidgets> createState() => _TodoListWidgetsState();
}

class _TodoListWidgetsState extends State<TodoListWidgets> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todos;

    return todos.isEmpty
        ? Center(
            child: Text(
              'Sem tarefas a serem feitas!',
            ),
          )
        : ListView.separated(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(16),
            separatorBuilder: (context, index) => Container(height: 8),
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];

              return TodoWidget(todo: todo);
            });
  }
}
