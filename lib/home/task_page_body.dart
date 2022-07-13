import 'package:flutter/material.dart';
import 'package:todo_app/widgets/simple_text.dart';

import '../utils/colors.dart';

class TaskPageBody extends StatefulWidget {
  const TaskPageBody({Key? key}) : super(key: key);

  @override
  State<TaskPageBody> createState() => _TaskPageBodyState();
}

class _TaskPageBodyState extends State<TaskPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  //evitando leak memory

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: PageView.builder(
          controller: pageController,
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
        borderRadius: BorderRadius.circular(30), color: Colors.grey[400]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 150,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadowColors,
                spreadRadius: 1.5,
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 3,
                  bottom: 5,
                  left: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.event),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.close),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        SimpleText(
                          text: 'Academia',
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        SimpleText(
                          text: 'Horário: 17:35',
                          color: Colors.black,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   height: 90,
                  //   width: 200,
                  //   color: Colors.black,
                  // ),
                ],
              ),
            ],
          ),
        ),
      ],
    ), //ternario (if\else)
  );
}
