import 'package:flutter/material.dart';
import 'package:portfolio/ui/screen/home_screen.dart';
import 'package:portfolio/util/common_responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mathan Thiruvenkadam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Builder(builder: (context) {
        CommonResponsive.init(context);
        return HomeScreen();
      }),
    );
  }
}
