import 'package:flutter/material.dart';

class SimpleText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  SimpleText({
    Key? key,
    this.color = Colors.white,
    this.size = 20,
    this.overFlow = TextOverflow.ellipsis,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
      ),
    );
  }
}
