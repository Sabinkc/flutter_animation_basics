import 'package:flutter/material.dart';

class TweenAnimationScreen extends StatelessWidget {
  const TweenAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TweenAnimation"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(seconds: 1),
        builder: (context, value, child) {
          return Padding(
            padding: EdgeInsets.only(top: value * 300),
            child: Text(
              "Tween Animation",
              style: TextStyle(
                  fontSize: value * 30, color: Colors.red.withOpacity(value)),
            ),
          );
        },
      ),
    );
  }
}
