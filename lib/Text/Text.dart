import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${runtimeType.toString().substring(0, runtimeType.toString().length)} Example"),
      ),
      body: Column(children: const [
        Text('Hello, Flutter!'),
        Text(
          'Hello, Flutter!',
          style: TextStyle(
            fontSize: 24.0,
            backgroundColor: Colors.black,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontStyle: FontStyle.italic,
            letterSpacing: 2.0,
            wordSpacing: 4.0,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dashed,
          ),
        ),
        Text(
          'Hello, Flutter!',
          textAlign: TextAlign.center, // 对齐方式（居中）
        ),
        Text(
          'This is a very long text. It may overflow the container if we do not handle it properly.',
          maxLines: 2, // 设置最大显示行数
          overflow: TextOverflow.ellipsis, // 设置溢出文本显示为省略号
        )
      ]),
    );
  }
}
