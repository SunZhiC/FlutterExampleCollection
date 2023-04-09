import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  RadioPageState createState() => RadioPageState();
}

class RadioPageState extends State<RadioPage> {
  int _selectedValue = 0;

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
            Radio(
              value: 1, // 该单选按钮的值
              groupValue: _selectedValue, // 选中的值
              onChanged: (int? newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
            ),
            Radio(
              value: 2,
              groupValue: _selectedValue,
              onChanged: (int? newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
              activeColor: Colors.red, // 设置单选按钮选中时的主题颜色
            ),
            Radio(
              value: 3,
              groupValue: _selectedValue,
              onChanged: null, // 设置为null表示禁用单选按钮
            ),
            ListTile(
              leading: Radio(
                value: 4,
                groupValue: _selectedValue,
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
              ),
              title: const Text('Radio with label'),
              onTap: () {
                setState(() {
                  _selectedValue = 1;
                });
              },
            ),
            RadioListTile(
              value: 5,
              groupValue: _selectedValue,
              onChanged: (int? newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
              title: const Text('RadioListTile with label'),
            )
          ],
        ));
  }
}
