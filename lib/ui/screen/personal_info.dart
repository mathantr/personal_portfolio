import 'package:flutter/material.dart';
import 'package:portfolio/ui/const/const_color.dart';
import 'package:portfolio/ui/widget/about_widget.dart';
import 'package:portfolio/ui/widget/text_widget.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 32, 33, 1),
      appBar: AppBar(
        backgroundColor: ConstColor.lightBlue,
        title: TextWidget(
          text: 'Personal Information',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [AboutWidget()],
        ),
      ),
    );
  }
}
