import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  SwitchPageState createState() => SwitchPageState();
}

class SwitchPageState extends State<SwitchPage> {
  bool _isSwitched = false;

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
            Switch(
              value: _isSwitched,
              onChanged: (bool newValue) {
                setState(() {
                  _isSwitched = newValue;
                });
              },
            ),
            Switch(
              value: _isSwitched,
              onChanged: (bool newValue) {
                setState(() {
                  _isSwitched = newValue;
                });
              },
              activeColor: Colors.red, // 设置开关按钮激活时的颜色
              activeTrackColor: Colors.redAccent, // 设置开关按钮激活时轨道的颜色
              inactiveThumbColor: Colors.grey, // 设置开关按钮非激活时的颜色
              inactiveTrackColor: Colors.grey[300], // 设置开关按钮非激活时轨道的颜色
            ),
            Switch(
              value: _isSwitched,
              onChanged: null, // 设置为null表示禁用开关按钮
            ),
            ListTile(
              leading: Switch(
                value: _isSwitched,
                onChanged: (bool newValue) {
                  setState(() {
                    _isSwitched = newValue;
                  });
                },
              ),
              title: const Text('Switch with label'),
              onTap: () {
                setState(() {
                  _isSwitched = !_isSwitched;
                });
              },
            )
          ],
        ));
  }
}
