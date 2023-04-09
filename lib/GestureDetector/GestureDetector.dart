import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  const GestureDetectorPage({super.key});

  @override
  GestureDetectorPageState createState() => GestureDetectorPageState();
}

class GestureDetectorPageState extends State<GestureDetectorPage> {

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
            GestureDetector(
              onTap: () {
                debugPrint('Container clicked');
              },
              child: Container(color: Colors.red, width: 100, height: 100),
            ),
            GestureDetector(
              onDoubleTap: () {
                debugPrint('Container double-clicked');
              },
              child: Container(color: Colors.red, width: 100, height: 100),
            ),
            GestureDetector(
              onLongPress: () {
                debugPrint('Container long-pressed');
              },
              child: Container(color: Colors.red, width: 100, height: 100),
            ),
            GestureDetector(
              onPanStart: (DragStartDetails details) {
                debugPrint('Start dragging');
              },
              onPanUpdate: (DragUpdateDetails details) {
                debugPrint('Dragging update');
              },
              onPanEnd: (DragEndDetails details) {
                debugPrint('End dragging');
              },
              child: Container(color: Colors.red, width: 100, height: 100),
            ),
            GestureDetector(
              onScaleStart: (ScaleStartDetails details) {
                debugPrint('Start scaling');
              },
              onScaleUpdate: (ScaleUpdateDetails details) {
                debugPrint('Scaling update');
              },
              onScaleEnd: (ScaleEndDetails details) {
                debugPrint('End scaling');
              },
              child: Container(color: Colors.red, width: 100, height: 100),
            ),
            GestureDetector(
              onTap: () {
                debugPrint('Container clicked');
              },
              onDoubleTap: () {
                debugPrint('Container double-clicked');
              },
              onLongPress: () {
                debugPrint('Container long-pressed');
              },
              child: Container(color: Colors.red, width: 100, height: 100),
            )
          ],
        ));
  }
}
