import 'package:flutter/material.dart';
import 'package:todo_app/home/task_page_body.dart';
import 'package:todo_app/utils/colors.dart';
import 'package:todo_app/widgets/simple_text.dart';
import 'package:todo_app/widgets/top_bar.dart';

import '../widgets/adding_task_button.dart';
import '../widgets/profile_picture.dart';
import '../widgets/text_box_tasks.dart';

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
          children: const [
            TopBar(),
            ProfilePicture(),
            TextBoxTasks(),
            TaskPageBody(),
            AddingTaskButton(),
          ],
        ),
      ),
    );
  }
}
