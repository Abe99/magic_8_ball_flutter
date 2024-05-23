import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 2;
  void randomBall() {
    setState(() {
                ballNumber = Random().nextInt(5) + 1;
              });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title:
                Text(style: TextStyle(color: Colors.white), "Ask Me Anything"),
          ),
          body: TextButton(
            onPressed: () {
              randomBall();
            },
            child: Center(
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          )),
    );
  }
}
