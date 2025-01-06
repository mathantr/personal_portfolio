import 'package:flutter/material.dart';

class CommonResponsive {
  static double w = 0;
  static double h = 0;

  static void init(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    w = mediaQueryData.size.width;
    h = mediaQueryData.size.height;
  }
}
