import 'package:flutter/material.dart';

import 'text_widget.dart';

class appBarWidget extends StatelessWidget {
  const appBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      // title: Padding(
      //   padding: const EdgeInsets.only(left: 20),
      //   child: TextWidget(
      //     text: 'Portfolio',
      //     fontWeight: FontWeight.w700,
      //   ),
      // ),
      actions: [
        Spacer(
          flex: 2,
        ),
        TextWidget(
          text: 'Portfolio',
          fontWeight: FontWeight.w700,
        ),
        Spacer(
          flex: 4,
        ),
        TextWidget(
          text: 'Home',
          fontWeight: FontWeight.w700,
        ),
        Spacer(
          flex: 1,
        ),
        TextWidget(
          text: 'About',
          fontWeight: FontWeight.w700,
        ),
        Spacer(
          flex: 1,
        ),
        TextWidget(
          text: 'Work',
          fontWeight: FontWeight.w700,
        ),
        Spacer(
          flex: 1,
        ),
        TextWidget(
          text: 'Service',
          fontWeight: FontWeight.w700,
        ),
        Spacer(
          flex: 1,
        ),
        TextWidget(
          text: 'Contact',
          fontWeight: FontWeight.w700,
        ),
        Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
