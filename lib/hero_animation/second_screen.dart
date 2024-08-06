import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: "image-1",
        child: Image.network(
          "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
          height: 600,
          width: 600,
        ),
      ),
    );
  }
}
