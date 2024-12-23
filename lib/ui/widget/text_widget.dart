import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;

  TextWidget(
      {super.key,
      required this.text,
      this.color = Colors.white,
      this.fontSize = 14,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
