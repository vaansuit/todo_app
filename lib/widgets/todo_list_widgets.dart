// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/todos_provider.dart';
import 'package:todo_app/widgets/todo_widget.dart';

class TodoListWidgets extends StatefulWidget {
  const TodoListWidgets({Key? key}) : super(key: key);

  @override
  State<TodoListWidgets> createState() => _TodoListWidgetsState();
}

class _TodoListWidgetsState extends State<TodoListWidgets> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todos;

    return todos.isEmpty
        ? const Center(
            child: Text(
              'Parabéns! Você não tem tarefas pendentes (◡‿◡ *)',
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
            },
          );
  }
}
