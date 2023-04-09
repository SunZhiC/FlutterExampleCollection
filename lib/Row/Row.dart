import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  const RowPage({super.key});

  @override
  RowPageState createState() => RowPageState();
}

class RowPageState extends State<RowPage> {
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
            Row(
              children: const [
                Text('Item 1'),
                Text('Item 2'),
                Text('Item 3'),
              ],
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // 子组件在行中均匀分布，两端对齐
              children: const [
                Text('Item 4'),
                Text('Item 5'),
                Text('Item 6'),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center, // 子组件在行的垂直方向居中对齐
              children: const [
                Text('Item 7'),
                Text('Item 8'),
                Text('Item 9'),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min, // 行的主轴尺寸根据子组件的尺寸进行缩放
              children: const [
                Text('Item 10'),
                Text('Item 11'),
                Text('Item 12'),
              ],
            ),
            Row(
              children: const [
                Text('Item 13'),
                Spacer(), // 添加可伸缩空间
                Text('Item 14'),
                Spacer(flex: 2), // 添加权重为 2 的可伸缩空间
                Text('Item 15'),
              ],
            ),
            Wrap(
              direction: Axis.horizontal, // 设置为水平方向
              children: const [
                Text('Item 16'),
                Text('Item 17'),
                Text('Item 18'),
                // ... 更多子组件
              ],
            )
          ],
        ));
  }
}
