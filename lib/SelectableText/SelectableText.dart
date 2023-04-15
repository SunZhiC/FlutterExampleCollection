import 'package:flutter/material.dart';

class SelectableTextPage extends StatefulWidget {
  const SelectableTextPage({super.key});

  @override
  SelectableTextPageState createState() => SelectableTextPageState();
}

class SelectableTextPageState extends State<SelectableTextPage> {
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
            const SelectableText(
              'This is selectable text. Tap and hold to select the text.',
            ),
            const SelectableText(
              'This is selectable text with a custom style.',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SelectableText(
              'This is selectable text with text alignment.',
              textAlign: TextAlign.center,
            ),
            const SelectableText(
              'This is selectable text with text direction.',
              textDirection: TextDirection.rtl,
            ),
            Theme(
              data: ThemeData(
                textSelectionTheme: TextSelectionThemeData(
                  cursorColor: Colors.red,
                  selectionColor: Colors.blue.withOpacity(0.5),
                  selectionHandleColor: Colors.green,
                ),
              ),
              child: const SelectableText(
                'This is selectable text with custom selection controls color.',
              ),
            )
          ],
        ));
  }
}
