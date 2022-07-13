import 'package:flutter/material.dart';

class TaskPageBody extends StatefulWidget {
  const TaskPageBody({Key? key}) : super(key: key);

  @override
  State<TaskPageBody> createState() => _TaskPageBodyState();
}

class _TaskPageBodyState extends State<TaskPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, position) {
            return _buildTaskPageBody(position);
          }),
    );
  }
}

Widget _buildTaskPageBody(int index) {
  return Container(
    height: 120,
    margin: const EdgeInsets.only(
      left: 10,
      right: 10,
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: index.isEven
            ? Colors.grey[400]
            : Colors.black), //ternario (if\else)
  );
}
