import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/mobile_responsive_widget/name_into_widget.dart';
import 'package:portfolio/ui/widget/text_widget.dart';

import 'download_pdf/resume_download.dart';

class NameIntroWidget extends StatelessWidget {
  const NameIntroWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return w < 600
        ? NameIntoWidgetResponsive()
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 20,
                  children: [
                    TextWidget(text: 'Hi, I\'m Mathan Thiruvenkadam'),
                    TextWidget(
                      text: 'A Creative',
                      fontSize: 44,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(157, 229, 14, 1),
                    ),
                    TextWidget(
                      text: 'Mobile Application Developer',
                      fontSize: 38,
                      fontWeight: FontWeight.w800,
                    ),
                    TextWidget(
                      text: 'Flutter Developer with 3+ Years of Experience',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    // Container(
                    //   height: 50,
                    //   width: 150,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(8.0),
                    //     color: Color.fromRGBO(157, 229, 14, 1),
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       TextWidget(
                    //         text: 'Get in touch',
                    //         color: Colors.black,
                    //       ),
                    //       Icon(
                    //         Icons.arrow_right_alt_outlined,
                    //         color: Colors.black,
                    //       ),
                    //     ],
                    //   ),
                    // )
                    DownloadPDFPage(),
                  ],
                ),
              ),
              Flexible(flex: 1, child: Image.asset('assets/profile.png'))
            ],
          );
  }
}
