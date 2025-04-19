import 'package:flutter/material.dart';
import 'package:portfolio/ui/const/const_color.dart';
import 'package:portfolio/ui/widget/text_widget.dart';

class ExperienceWidgetMobile extends StatelessWidget {
  String name;
  String year;
  String history;
  String field;
  ExperienceWidgetMobile(
      {super.key,
      required this.name,
      required this.year,
      required this.history,
      required this.field});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.liteBlack,
      appBar: AppBar(
        title: TextWidget(text: name),
      ),
      body: Column(
        children: [
          TextWidget(text: name),
          TextWidget(text: year),
          TextWidget(text: history),
          TextWidget(text: field),
        ],
      ),
    );
  }
}
