import 'package:flutter/material.dart';

class RichTextPage extends StatefulWidget {
  const RichTextPage({super.key});

  @override
  RichTextPageState createState() => RichTextPageState();
}

class RichTextPageState extends State<RichTextPage> {
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
            RichText(
              text: TextSpan(
                text: 'Hello ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                      text: 'bold',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' world!'),
                ],
              ),
            ),
            const Text.rich(
              TextSpan(
                text: 'Hello ',
                children: [
                  TextSpan(
                      text: 'bold',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' world!'),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'This is ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                      text: 'bold',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red)),
                  TextSpan(text: ' and '),
                  TextSpan(
                      text: 'italic',
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.blue)),
                  TextSpan(text: ' text.'),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Flutter is ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'awesome ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: 'and',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      TextSpan(
                        text: ' fun',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  TextSpan(text: '!'),
                ],
              ),
            ),
          ],
        ));
  }
}
