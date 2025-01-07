import 'package:coaching_class_app/pages/boarding_page.dart';
import 'package:coaching_class_app/pages/notification_page.dart';
import 'package:flutter/material.dart';

void main() {
  print("Hello World");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static double screenWidth = 0;
  static double screenHeight = 0;

  static const double referenceWidth = 412.0;
  static const double referenceHeight = 917.0;

  static double widthCal(double width) {
    return (width / referenceWidth) * screenWidth;
  }

  static double heightCal(double height) {
    return (height / referenceHeight) * screenHeight;
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Boardingpage(),
    );
  }
}
