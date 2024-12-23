import 'package:flutter/material.dart';

import 'text_widget.dart';

class BoxProfileContainer extends StatelessWidget {
  const BoxProfileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Color.fromRGBO(157, 229, 14, 1),
              width: 1,
            ),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(23, 24, 20, 1),
              Color.fromRGBO(23, 22, 21, 1),
            ])),
        child: Row(
          spacing: 10,
          children: [
            Spacer(),
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/018/930/480/non_2x/linkedin-logo-linkedin-icon-transparent-free-png.png',
              height: 75,
              width: 75,
            ),
            TextWidget(
              text: 'LinkedIn',
              fontSize: 20,
              color: Colors.white.withValues(alpha: 0.5),
            ),
            Spacer(),
            Image.network(
                'https://img.icons8.com/ios_filled/200/FFFFFF/github.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover),
            TextWidget(
              text: 'Github',
              fontSize: 20,
              color: Colors.white.withValues(alpha: 0.5),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
