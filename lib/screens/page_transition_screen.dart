import 'package:animation_basics/screens/basic_animation_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class PageTransitionScreen extends StatelessWidget {
  const PageTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Transition"),
        centerTitle: true,
      ),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  // curve: Curves.bounceIn,
                  duration: Duration(seconds: 1),
                  child: BasicAnimationScreen(),
                  type: PageTransitionType.bottomToTop));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
