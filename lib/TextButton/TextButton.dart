import 'package:flutter/material.dart';

class TextButtonPage extends StatefulWidget {
  const TextButtonPage({super.key});

  @override
  TextButtonPageState createState() => TextButtonPageState();
}

class TextButtonPageState extends State<TextButtonPage> {

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
            TextButton(
              onPressed: () {
                debugPrint('Button click');
              },
              child: const Text('Click Me'),
            ),
            TextButton(
              onPressed: () {
                // 处理按钮点击事件
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // 设置按钮圆角
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 10), // 设置按钮内边距
              ),
              child: const Text('Click Me'),
            ),
            const TextButton(
              onPressed: null, // 设置为null表示禁用按钮
              child: Text('Disabled Button'),
            ),
            TextButton.icon(
              onPressed: () {
                // 处理按钮点击事件
              },
              icon: const Icon(Icons.add), // 添加图标
              label: const Text('Add'),
            )
          ],
        ));
  }
}
