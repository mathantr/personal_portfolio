import 'package:flutter/material.dart';
import 'package:portfolio/ui/const/const_color.dart';
import 'package:portfolio/ui/widget/download_pdf/resume_download.dart';
import 'package:portfolio/ui/widget/text_widget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/util/common_responsive.dart';

class NameIntoWidgetResponsive extends StatefulWidget {
  const NameIntoWidgetResponsive({super.key});

  @override
  State<NameIntoWidgetResponsive> createState() =>
      _NameIntoWidgetResponsiveState();
}

class _NameIntoWidgetResponsiveState extends State<NameIntoWidgetResponsive> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 20,
      children: [
        Stack(
          children: [
            Container(
              height: 200, // Ensure height and width are equal for a circle
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    100.0), // Half of the width/height value
                color: ConstColor.green,
              ),
            ),
            Positioned(
              bottom:
                  -50, // Adjust these values to position the image inside the container
              left: 10,
              child: ClipOval(
                child: Image.asset(
                  'assets/profile.png',
                  height: 250,
                  width: 200,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 300,
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 18.0,
            ),
            child: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Mathan Thiruvenkadam',
                      textStyle:
                          TextStyle(fontSize: 26, color: ConstColor.lightBlue)),
                ],
                repeatForever: true,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 300,
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 18.0,
            ),
            child: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  ScaleAnimatedText('Flutter Developer',
                      textStyle:
                          TextStyle(fontSize: 26, color: ConstColor.green)),
                ],
                repeatForever: true,
              ),
            ),
          ),
        ),
        DownloadPDFPage(),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
