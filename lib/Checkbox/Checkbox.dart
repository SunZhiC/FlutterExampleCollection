import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  CheckBoxPageState createState() => CheckBoxPageState();
}

class CheckBoxPageState extends State<CheckBoxPage> {
  bool _isChecked = false;

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
            Checkbox(
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue!;
                });
              },
            ),
            Checkbox(
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue!;
                });
              },
              activeColor: Colors.red, // 设置复选框选中时的主题颜色
              checkColor: Colors.white, // 设置复选框选中时的对勾颜色
            ),
            Checkbox(
              value: _isChecked,
              onChanged: null, // 设置为null表示禁用复选框
            ),
            Checkbox(
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue!;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5), // 设置复选框圆角
              ),
            ),
            ListTile(
              leading: Checkbox(
                value: _isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue!;
                  });
                },
              ),
              title: const Text('Checkbox with label'),
              onTap: () {
                setState(() {
                  _isChecked = !_isChecked;
                });
              },
            )
          ],
        ));
  }
}
