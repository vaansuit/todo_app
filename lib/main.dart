import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/home_page.dart';
import 'provider/todos_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TodosProvider(),
      child: const MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
