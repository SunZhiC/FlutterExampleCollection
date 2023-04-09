import 'package:flutter/material.dart';

class SizedBoxPage extends StatefulWidget {
  const SizedBoxPage({super.key});

  @override
  SizedBoxPageState createState() => SizedBoxPageState();
}

class SizedBoxPageState extends State<SizedBoxPage> {
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
            SizedBox(
              width: 100,
              height: 100,
              child: Container(color: Colors.red),
            ),
            SizedBox(
              width: 100,
              child: Container(color: Colors.red, height: 50),
            ),
            Column(
              children: [
                Container(color: Colors.red, height: 50),
                const SizedBox(height: 10), // 添加 10 像素高的空白空间
                Container(color: Colors.green, height: 50),
              ],
            ),
          ],
        ));
  }
}
