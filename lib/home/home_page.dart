import 'package:flutter/material.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/widgets/todo_widget.dart';

import '../utils/colors.dart';
import '../widgets/adding_task_button.dart';
import '../widgets/profile_picture.dart';
import '../widgets/text_box_tasks.dart';
import '../widgets/todo_list_widgets.dart';
import '../widgets/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopBar(),
            const ProfilePicture(),
            const TextBoxTasks(),
            TodoListWidgets(),
            const AddingTaskButton(),
          ],
        ),
      ),
    );
  }
}
