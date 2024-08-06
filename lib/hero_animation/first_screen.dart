import 'package:animation_basics/hero_animation/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return SecondScreen();
          }));
        },
        child: Hero(
          tag: "image-1",
          child: Image.network(
            "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
