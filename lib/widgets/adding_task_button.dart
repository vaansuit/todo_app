import 'package:flutter/material.dart';
import 'package:todo_app/utils/colors.dart';

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
          InkWell(
            onTap: (() {}),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadowColors,
                    spreadRadius: 1.5,
                  ),
                ],
              ),
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
