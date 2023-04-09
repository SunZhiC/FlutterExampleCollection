import 'package:flutter/material.dart';

class FloatingActionButtonPage extends StatefulWidget {
  const FloatingActionButtonPage({super.key});

  @override
  FloatingActionButtonPageState createState() =>
      FloatingActionButtonPageState();
}

class FloatingActionButtonPageState extends State<FloatingActionButtonPage> {

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
            FloatingActionButton(
              onPressed: () {
                // 处理按钮点击事件
              },
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                // 处理按钮点击事件
              },
              backgroundColor: Colors.black, // 设置按钮背景颜色
              foregroundColor: Colors.blue,
              child: const Icon(Icons.add), // 设置按钮前景颜色（图标颜色）
            ),
            FloatingActionButton(
              onPressed: () {
                // 处理按钮点击事件
              },
              mini: true, // 设置为较小尺寸的按钮
              child: const Icon(Icons.add),
            ),
            FloatingActionButton.extended(
              onPressed: () {
                // 处理按钮点击事件
              },
              icon: const Icon(Icons.add), // 添加图标
              label: const Text('Add'), // 添加标签
            ),
            FloatingActionButton(
              onPressed: () {
                // 处理按钮点击事件
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // 设置按钮圆角
              ),
              child: const Icon(Icons.add),
            )
          ],
        ));
  }
}
