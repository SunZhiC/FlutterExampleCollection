import 'package:flutter/material.dart';

class StreamBuilderPage extends StatefulWidget {
  const StreamBuilderPage({super.key});

  @override
  StreamBuilderPageState createState() => StreamBuilderPageState();
}

class StreamBuilderPageState extends State<StreamBuilderPage> {
  Stream<int>? someStream;

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
            StreamBuilder<int>(
              stream: someStream, // 你需要监听的 Stream 对象
              initialData: 0, // 初始数据，可选
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                // 根据数据流的状态更新 UI
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return Text('Data: ${snapshot.data}');
                }
              },
            )
          ],
        ));
  }
}
