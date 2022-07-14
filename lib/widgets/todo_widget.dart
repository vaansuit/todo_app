import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/home/task_page_body.dart';
import 'package:todo_app/widgets/simple_text.dart';

import '../model/todo.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;

  const TodoWidget({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Slidable(
          actionPane: SlidableDrawerActionPane(),
          key: Key(todo.id),
          actions: [
            IconSlideAction(
              color: Colors.green,
              onTap: () {},
              caption: 'Editar',
              icon: Icons.edit,
            ),
          ],
          secondaryActions: [
            IconSlideAction(
              color: Colors.red,
              onTap: () {},
              caption: 'Excluir',
              icon: Icons.delete,
            ),
          ],
          child: buildTodo(context),
        ),
      );

  Widget buildTodo(BuildContext context) => Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Checkbox(
              activeColor: Colors.blue,
              checkColor: Colors.white,
              value: todo.isDone,
              onChanged: (_) {},
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                children: [
                  SimpleText(
                    text: todo.title,
                    color: Colors.black,
                  ),
                  if (todo.description.isNotEmpty)
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      child: Text(
                        todo.description,
                        style: TextStyle(fontSize: 15, height: 1.5),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      );
}
