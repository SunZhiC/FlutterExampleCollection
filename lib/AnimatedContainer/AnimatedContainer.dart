import 'package:flutter/material.dart';

class AnimatedContrainerPage extends StatefulWidget {
  const AnimatedContrainerPage({super.key});

  @override
  AnimatedContrainerPageState createState() => AnimatedContrainerPageState();
}

class AnimatedContrainerPageState extends State<AnimatedContrainerPage> {
  bool _isRed = true;
  bool _isSmall = true;
  bool _hasBorder = false;
  bool _isRounded = false;

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
                    _isRed = !_isRed;
                    _isSmall = !_isSmall;
                    _hasBorder = !_hasBorder;
                    _isRounded = !_isRounded;
                  });
                },
                child: const Text("Change state")),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: 100,
              height: 100,
              color: _isRed ? Colors.red : Colors.blue,
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: _isSmall ? 100 : 200,
              height: _isSmall ? 100 : 200,
              color: Colors.red,
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                border: _hasBorder
                    ? Border.all(color: Colors.black, width: 3)
                    : Border.all(color: Colors.transparent),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: _isRounded
                    ? BorderRadius.circular(50)
                    : BorderRadius.circular(0),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              width: 100,
              height: 100,
              color: Colors.red,
            )
          ],
        ));
  }
}
