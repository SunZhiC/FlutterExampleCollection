import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({super.key});

  @override
  ExpandedPageState createState() => ExpandedPageState();
}

class ExpandedPageState extends State<ExpandedPage> {

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
            Row(
              children: [
                Expanded(
                  child: Container(color: Colors.red, height: 100),
                ),
                Container(color: Colors.green, width: 50, height: 100),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 4, // 占据 2 份空间
                  child: Container(color: Colors.red, height: 100),
                ),
                Expanded(
                  flex: 1, // 占据 1 份空间
                  child: Container(color: Colors.green, height: 100),
                ),
              ],
            ),

          ],
        ));
  }
}
