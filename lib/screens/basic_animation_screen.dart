import 'dart:async';

import 'package:flutter/material.dart';

class BasicAnimationScreen extends StatefulWidget {
  const BasicAnimationScreen({super.key});

  @override
  State<BasicAnimationScreen> createState() => _BasicAnimationScreenState();
}

class _BasicAnimationScreenState extends State<BasicAnimationScreen> {
  bool isAnimated = false;

  double containerHeight = 100;
  double containerWidth = 100;

  int initialTimerValue = 1;

  startTimer() {
    initialTimerValue++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Basic Animations"),
          centerTitle: true,
        ),
        body: AnimatedOpacity(
          duration: Duration(seconds: 2),
          opacity: isAnimated ? 0.1 : 1,
          child: AnimatedContainer(
            margin: isAnimated ? EdgeInsets.all(0) : EdgeInsets.all(200),
            transform:
                isAnimated ? Matrix4.rotationZ(0) : Matrix4.rotationZ(-0.5),
            decoration: BoxDecoration(
              color: isAnimated ? Colors.blue : Colors.red,
              borderRadius: isAnimated
                  ? BorderRadius.circular(50)
                  : BorderRadius.circular(0),
              border: isAnimated
                  ? Border.all(color: Colors.black, style: BorderStyle.solid)
                  : Border.all(width: 2, color: Colors.transparent),
            ),
            duration: Duration(seconds: 2),
            height: isAnimated ? containerHeight : 200,
            width: isAnimated ? containerWidth : 200,
            alignment: isAnimated ? Alignment.bottomLeft : Alignment.center,
            curve: Curves.linear,
            child: Center(child: Text(initialTimerValue.toString())),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Column(
          children: [
            FloatingActionButton(
                child: Icon(Icons.animation),
                onPressed: () {
                  isAnimated = !isAnimated;
                  setState(() {});
                }),
            FloatingActionButton(
                child: Icon(Icons.timer),
                onPressed: () {
                  Timer.periodic(Duration(seconds: 1), (timer) {
                    setState(() {
                      startTimer();
                    });
                  });
                }),
          ],
        ));
  }
}
