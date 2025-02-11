import 'package:flutter/material.dart';
import 'package:squirrel/pages/home_page.dart';
import 'package:squirrel/pages/layout_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutDemo(),
      // home: HomePage(),
    );
  }
}


