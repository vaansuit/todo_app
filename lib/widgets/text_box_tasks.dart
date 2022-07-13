import 'package:flutter/material.dart';

import 'simple_text.dart';

class TextBoxTasks extends StatelessWidget {
  const TextBoxTasks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 2,
      ),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SimpleText(
                    text: 'Olá, Vansuit!',
                    size: 30,
                  ),
                ],
              ),
              Column(
                children: [
                  SimpleText(
                    text: 'Você tem 3 tarefas\npendentes para hoje!',
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
