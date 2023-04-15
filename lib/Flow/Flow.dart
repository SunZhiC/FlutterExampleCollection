import 'package:flutter/material.dart';

class FlowPage extends StatefulWidget {
  const FlowPage({super.key});

  @override
  FlowPageState createState() => FlowPageState();
}

class FlowPageState extends State<FlowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "${runtimeType.toString().substring(0, runtimeType.toString().length - 9)} Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Flow(
          delegate: FlowDelegateExample(),
          children: List.generate(
            10,
            (index) => Container(
              width: 80.0 + index * 10,
              height: 50.0,
              color: Colors.blue[(index + 1) * 100],
              child: Center(
                child: Text(
                  'Item ${index + 1}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FlowDelegateExample extends FlowDelegate {
  @override
  Size getSize(BoxConstraints constraints) {
    return const Size(double.infinity, 200.0);
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double x = 0.0;
    double y = 0.0;

    for (int i = 0; i < context.childCount; i++) {
      Size? childSize = context.getChildSize(i);
      double width = childSize?.width ?? 0;
      double height = childSize?.height ?? 0;

      if (x + width > context.size.width) {
        x = 0.0;
        y += height + 8.0;
      }

      context.paintChild(i, transform: Matrix4.translationValues(x, y, 0.0));
      x += width + 8.0;
    }
  }

  @override
  bool shouldRepaint(FlowDelegateExample oldDelegate) {
    return false;
  }
}
