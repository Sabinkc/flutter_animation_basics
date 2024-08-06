import 'package:animation_basics/hero_animation/first_screen.dart';
import 'package:animation_basics/screens/basic_animation_screen.dart';
import 'package:animation_basics/screens/page_transition_screen.dart';
import 'package:animation_basics/screens/test_screen.dart';
import 'package:animation_basics/screens/tween_animation_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
