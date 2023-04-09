import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonPage extends StatefulWidget {
  const CupertinoButtonPage({super.key});

  @override
  CupertinoButtonPageState createState() => CupertinoButtonPageState();
}

class CupertinoButtonPageState extends State<CupertinoButtonPage> {
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
            CupertinoButton(
              onPressed: () {
                debugPrint("click");
              },
              child: const Text('Click Me'),
            ),
            CupertinoButton(
              color: Colors.blue,
              disabledColor: Colors.grey,
              onPressed: () {
                // 处理按钮点击事件
                debugPrint("click");
              },
              child: const Text('Click Me 2'),
            ),
            const CupertinoButton(
              onPressed: null,
              child: Text('Disable button'),
            ),
            CupertinoButton(
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
            CupertinoButton(
              color: Colors.blue,
              disabledColor: Colors.grey,
              onPressed:
                  _isButtonEnabled ? () => debugPrint('Button pressed') : null,
              child: const Text('Enabled/Disabled Button'),
            ),
            CupertinoButton(
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
