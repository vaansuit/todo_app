import 'package:flutter/material.dart';

import 'add_todo_dialog.dart';

class AddingTaskButton extends StatelessWidget {
  const AddingTaskButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return AddTodoDialog();
                }),
            child: Icon(
              Icons.add,
            ),
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
