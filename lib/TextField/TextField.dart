import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  TextFieldPageState createState() => TextFieldPageState();
}

class TextFieldPageState extends State<TextFieldPage> {
  final TextEditingController _controller = TextEditingController();

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
            const TextField(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your text',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person), // 前缀图标
                suffixIcon: Icon(Icons.clear), // 后缀图标
              ),
            ),
            TextField(
              onChanged: (String value) {
                debugPrint(value);
              },
            ),
            TextField(
              controller: _controller,
            ),
            Text(_controller.text),
            ElevatedButton(
                onPressed: () {
                  _controller.text = "";
                },
                child: const Text("reset Text")),
            const TextField(
              keyboardType: TextInputType.emailAddress, // 设置键盘类型为电子邮件地址
            ),
            const TextField(
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            
          ],
        ));
  }
}
