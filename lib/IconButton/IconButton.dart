import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconButtonPage extends StatefulWidget {
  const IconButtonPage({super.key});

  @override
  IconButtonPageState createState() => IconButtonPageState();
}

class IconButtonPageState extends State<IconButtonPage> {

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
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                // 处理按钮点击事件
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.favorite,
                color: Colors.red, // 设置图标颜色
                size: 30.0, // 设置图标大小
              ),
              onPressed: () {
                // 处理按钮点击事件
              },
            ),
            const IconButton(
              icon: Icon(Icons.favorite),
              onPressed: null, // 设置为null表示禁用按钮
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                // 处理按钮点击事件
              },
              padding: const EdgeInsets.all(8.0), // 设置按钮内边距
              iconSize: 30.0, // 设置图标大小
              splashRadius: 24.0, // 设置涟漪效果半径
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.github), // 使用FontAwesome的Github图标
              onPressed: () {
                // 处理按钮点击事件
              },
            )
          ],
        ));
  }
}
