import 'package:flutter/material.dart';
import 'dart:math' as math;

class TweenAnimationBuilderPage extends StatefulWidget {
  const TweenAnimationBuilderPage({super.key});

  @override
  TweenAnimationBuilderPageState createState() =>
      TweenAnimationBuilderPageState();
}

class TweenAnimationBuilderPageState extends State<TweenAnimationBuilderPage> {
  bool _isScaled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "${runtimeType.toString().substring(0, runtimeType.toString().length - 9)} Example"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    _isScaled = !_isScaled;
                  });
                },
                child: const Text("Change state")),
            TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 1.0, end: _isScaled ? 2.0 : 1.0),
                duration: const Duration(seconds: 1),
                builder: (BuildContext context, double value, Widget? child) {
                  return Transform.scale(scale: value, child: child);
                },
                child: Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                )),
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 1.0, end: _isScaled ? 2.0 : 1.0),
              duration: const Duration(seconds: 1),
              onEnd: () {
                setState(() {
                  // _isScaled = !_isScaled;
                });
              },
              builder: (BuildContext context, double value, Widget? child) {
                return Transform.scale(scale: value, child: child);
              },
              child: Center(
                  child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              )),
            ),
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 1.0, end: _isScaled ? 2.0 : 1.0),
              duration: const Duration(seconds: 1),
              builder:
                  (BuildContext context, double scaleValue, Widget? child) {
                return Transform.scale(
                  scale: scaleValue,
                  child: child,
                );
              },
              child: TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0.0, end: math.pi * 2),
                duration: const Duration(seconds: 2),
                builder:
                    (BuildContext context, double rotateValue, Widget? child) {
                  return Transform.rotate(
                    angle: rotateValue,
                    child: child,
                  );
                },
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ),
            ),
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 1.0, end: _isScaled ? 2.0 : 1.0),
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              builder: (BuildContext context, double value, Widget? child) {
                return Transform.scale(scale: value, child: child);
              },
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            )
          ],
        ));
  }
}
