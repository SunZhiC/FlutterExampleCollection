import 'package:flutter/material.dart';

class EvevatedButtonPage extends StatefulWidget {
  const EvevatedButtonPage({super.key});

  @override
  EvevatedButtonPageState createState() => EvevatedButtonPageState();
}

class EvevatedButtonPageState extends State<EvevatedButtonPage> {
  bool _isButtonEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${runtimeType.toString().substring(0, runtimeType.toString().length - 9)} Example"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                debugPrint("click");
              },
              child: const Text('Click Me'),
            ),
            ElevatedButton(
              onPressed: () {
                // 处理按钮点击事件
                debugPrint("click");
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.blue,
                disabledForegroundColor: Colors.white,
                elevation: 5, // 设置按钮阴影
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // 设置按钮圆角
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 10), // 设置按钮内边距
              ),
              child: const Text('Click Me 2'),
            ),
            ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.blue,
                disabledForegroundColor: Colors.white,
                disabledBackgroundColor: Colors.grey,
                elevation: 5, // 设置按钮阴影
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // 设置按钮圆角
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 10), // 设置按钮内边距
              ),
              child: const Text('Disable button'),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(120, 60), alignment: Alignment.center),
              onPressed: () {
                // 处理按钮点击事件
                const Text('Click Me 1');
              },
              icon:
                  Image.asset('images/moon.jpg', width: 50, height: 50), // 添加图标
              label: const Text('Add'),
            ),
            ElevatedButton(
                onPressed: () {
                  debugPrint('Button pressed');
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('images/moon.jpg', width: 50, height: 50),
                    const Text('Add'),
                  ],
                )),
            ElevatedButton(
              onPressed:
                  _isButtonEnabled ? () => debugPrint('Button pressed') : null,
              child: const Text('Enabled/Disabled Button'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isButtonEnabled = !_isButtonEnabled;
                });
              },
              child: const Text('Toggle Button'),
            ),
          ],
        ));
  }
}
