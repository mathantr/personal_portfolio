import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/const/const_color.dart';
import 'package:portfolio/ui/widget/education_widget.dart';
import 'package:portfolio/ui/widget/experience_widget.dart';
import 'package:portfolio/ui/widget/text_widget.dart';

import '../widget/about_widget.dart';

class StepperListWidget extends StatefulWidget {
  const StepperListWidget({super.key});

  @override
  State<StepperListWidget> createState() => _StepperListWidgetState();
}

class _StepperListWidgetState extends State<StepperListWidget> {
  String _selectedSegment = 'About';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.transparent,
      navigationBar: CupertinoNavigationBar(
        middle: CupertinoSlidingSegmentedControl<String>(
          backgroundColor: Colors.black,
          thumbColor: ConstColor.green,
          groupValue: _selectedSegment,
          onValueChanged: (String? value) {
            if (value != null) {
              setState(() {
                _selectedSegment = value;
              });
            }
          },
          children: <String, Widget>{
            'About': Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'About',
                style: TextStyle(
                  color: _selectedSegment == 'About'
                      ? CupertinoColors.black
                      : CupertinoColors.white,
                ),
              ),
            ),
            'Education': Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Education',
                style: TextStyle(
                  color: _selectedSegment == 'Education'
                      ? CupertinoColors.black
                      : CupertinoColors.white.withValues(alpha: 0.5),
                ),
              ),
            ),
          },
        ),
      ),
      child: Center(
        child: Builder(
          builder: (context) {
            switch (_selectedSegment) {
              case 'About':
                return AboutWidget();
              case 'Education':
                return EducationWidget();

              default:
                return const Text(
                  'Unknown section',
                  style: TextStyle(color: CupertinoColors.white),
                );
            }
          },
        ),
      ),
    );
  }
}
