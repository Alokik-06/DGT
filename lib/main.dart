// ignore_for_file: prefer_const_constructors

import 'package:dgt/screen/my_streaks.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStreaksPage(),
    );
  }
}
