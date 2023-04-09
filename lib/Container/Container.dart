import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  ContainerPageState createState() => ContainerPageState();
}

class ContainerPageState extends State<ContainerPage> {


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
            Container(
              width: 200.0,
              height: 50.0,
              color: Colors.blue,
              margin: const EdgeInsets.all(5.0), // 设置外边距
              padding: const EdgeInsets.all(10.0), // 设置内边距
              
              child: const Text('Hello, Flutter!'),
            ),
            Container(
              width: 200.0,
              height: 50.0,

              margin: const EdgeInsets.all(5.0), // 设置外边距
              padding: const EdgeInsets.all(10.0), // 设置内边距
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue,

              ),
              child: const Text('Hello, Flutter!'),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Text('Hello, Flutter!'),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 10.0,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const Text('Hello, Flutter!'),
            ),
            Container(
              alignment: Alignment.center, // 将子组件置于容器中央
              child: const Text('Hello, Flutter!'),
            )
          ],
        ));
  }
}
