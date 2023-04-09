import 'package:flutter/material.dart';

class InkWellPage extends StatefulWidget {
  const InkWellPage({super.key});

  @override
  InkWellPageState createState() => InkWellPageState();
}

class InkWellPageState extends State<InkWellPage> {
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
            InkWell(
              onTap: () {
                debugPrint('Container clicked');
              },
              child: Ink(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
            
            InkWell(
              onTap: () {
                debugPrint('Container clicked');
              },
              splashColor: Colors.blue,
              child: Ink(color: Colors.red, width: 100, height: 100),
            ),
            InkWell(
              onTap: () {
                debugPrint('Container clicked');
              },
              radius: 50.0,
              child: Ink(color: Colors.red, width: 100, height: 100),
            ),
            InkWell(
              onTap: () {
                debugPrint('Container clicked');
              },
              onLongPress: () {
                debugPrint('Container long-pressed');
              },
              child: Ink(color: Colors.red, width: 100, height: 100),
            ),
            InkWell(
              onTap: () {
                debugPrint('Container clicked');
              },
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Ink(color: Colors.red, width: 100, height: 100),
            )
          ],
        ));
  }
}
