import 'package:flutter/material.dart';
import 'package:portfolio/util/common_responsive.dart';

import '../const/const_color.dart';
import 'text_widget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class BoxProfileContainer extends StatelessWidget {
  const BoxProfileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorizeColors = [
      Colors.white,
      ConstColor.lightBlue,
      Colors.yellow,
      Colors.red,
    ];
    return CommonResponsive.w < 600
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              //height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: ConstColor.green, width: 2.0),
              ),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    'https://static.vecteezy.com/system/resources/previews/018/930/480/non_2x/linkedin-logo-linkedin-icon-transparent-free-png.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    //width: 75,
                    child: DefaultTextStyle(
                      style: TextStyle(
                        color: ConstColor.lightBlue,
                        fontSize: 20.0,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('LinkedIn'),
                        ],
                        repeatForever: true,
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                  Image.network(
                      'https://img.icons8.com/ios_filled/200/FFFFFF/github.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover),
                  SizedBox(
                    // width: CommonResponsive.w < 400 ? 50 : 75,
                    child: DefaultTextStyle(
                      style: TextStyle(
                        color: ConstColor.lightBlue,
                        fontSize: 20.0,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('Github',
                              textAlign: TextAlign.justify),
                        ],
                        repeatForever: true,
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
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
                  AnimatedTextKit(repeatForever: true, animatedTexts: [
                    ColorizeAnimatedText(
                      'LinkedIn',
                      textStyle: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Horizon',
                          fontWeight: FontWeight.w600),
                      colors: colorizeColors,
                    ),
                  ]),
                  Spacer(),
                  Image.network(
                      'https://img.icons8.com/ios_filled/200/FFFFFF/github.png',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(width: 20.0, height: 100.0),
                      const Text(
                        'Git',
                        style: TextStyle(fontSize: 28.0, color: Colors.white),
                      ),
                      const SizedBox(width: 10.0, height: 100.0),
                      DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 28,
                          fontFamily: 'Horizon',
                        ),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            RotateAnimatedText('Hub',
                                textStyle: TextStyle(
                                    color: ConstColor.lightBlue, fontSize: 24)),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          );
  }
}
