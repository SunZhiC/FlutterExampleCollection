import 'dart:math';

import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatefulWidget {
  const SingleChildScrollViewPage({super.key});

  @override
  SingleChildScrollViewPageState createState() =>
      SingleChildScrollViewPageState();
}

class SingleChildScrollViewPageState extends State<SingleChildScrollViewPage> {
  final ScrollController _controller = ScrollController();
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "${runtimeType.toString().substring(0, runtimeType.toString().length - 9)} Example"),
        ),
        body:
            SingleChildScrollView(
              child:  SizedBox(width: MediaQuery.of(context).size.width,
                child:  Column(
                children: List.generate(50, (index) => Text('Item $index', style: const TextStyle(backgroundColor: Colors.blue))),
              ))
            ),
            //     SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: List.generate(
            //         50,
            //         (index) =>
            //             Container(color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256), random.nextInt(256)), width: 100, height: 100)),
            //   ),
            // )

            //     SingleChildScrollView(
            //   controller: _controller,
            //   child: Column(
            //     children: List.generate(50, (index) => Text('Item $index')),
            //   ),
            // )

            //   SingleChildScrollView(
            // physics: const BouncingScrollPhysics(), // iOS-like 弹性滚动效果
            // child: Column(
            //   children: List.generate(50, (index) => Text('Item $index')),
            // ),
            // )

          //   SingleChildScrollView(
          // padding: const EdgeInsets.all(16.0),
          // child: Column(
          //   children: List.generate(50, (index) => Text('Item $index')),
          // ),
        // )
        );
  }
}
