import 'package:flutter/material.dart';

import 'simple_text.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // InkWell(
          //   onTap: (() {}),
          //   child: const Icon(
          //     Icons.menu,
          //     size: 30,
          //   ),
          // ),
          Center(child: SimpleText(text: 'toDo ^~^')),
          // InkWell(
          //   onTap: (() {}),
          //   child: const Icon(
          //     Icons.search,
          //     size: 30,
          //   ),
          // ),
        ],
      ),
    );
  }
}
