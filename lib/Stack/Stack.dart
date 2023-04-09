import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  StackPageState createState() => StackPageState();
}

class StackPageState extends State<StackPage> {
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
            Stack(
              children: [
                Container(color: Colors.red, width: 100, height: 100),
                Container(color: Colors.green, width: 80, height: 80),
                Container(color: Colors.blue, width: 60, height: 60),
              ],
            ),
            Stack(
              children: [
                Container(color: Colors.red, width: 100, height: 100),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(color: Colors.green, width: 80, height: 80),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(color: Colors.blue, width: 60, height: 60),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center, // 子组件在堆栈中居中对齐
              children: [
                Container(color: Colors.red, width: 100, height: 100),
                Container(color: Colors.green, width: 80, height: 80),
                Container(color: Colors.blue, width: 60, height: 60),
              ],
            ),
            SizedBox(
                width: 150,
                height: 150,
                child: Stack(
                  fit: StackFit.expand, // 子组件扩展到堆栈的最大大小
                  children: [
                    Container(color: Colors.red),
                    Container(color: Colors.green.withOpacity(0.5)),
                    Container(color: Colors.blue.withOpacity(0.5)),
                  ],
                )),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(color: Colors.red, width: 100, height: 100),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(color: Colors.green, width: 80, height: 80),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(color: Colors.blue, width: 60, height: 60),
                ),
                const Text('Stacked Text'), // 文本居中显示在所有子组件之上
              ],
            )
          ],
        ));
  }
}
