import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
  static void showCheckedBar(BuildContext context, String text) =>
      Scaffold.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(text),
          ),
        );
}
