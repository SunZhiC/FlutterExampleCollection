import 'package:flutter/material.dart';

class SimpleDialogPage extends StatefulWidget {
  const SimpleDialogPage({super.key});

  @override
  SimpleDialogPageState createState() => SimpleDialogPageState();
}

class SimpleDialogPageState extends State<SimpleDialogPage> {
  void _showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const SimpleDialog(
          titlePadding: EdgeInsets.all(10),
          title: Center(
            child: Text('SimpleDialog Title'),
          ),
        );
      },
    );
  }

  void _showSimpleDialogWithOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('SimpleDialog Title'),
          children: <Widget>[
            SimpleDialogOption(
              child: const Text('Option 1'),
              onPressed: () {
                // Do something
                Navigator.of(context).pop();
              },
            ),
            SimpleDialogOption(
              child: const Text('Option 2'),
              onPressed: () {
                // Do something
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showSimpleDialogWithOptionsNavigator(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('SimpleDialog Title'),
          children: <Widget>[
            SimpleDialogOption(
              padding: const EdgeInsets.all(16),
              child:
                  const Text('Option 1', style: TextStyle(color: Colors.red)),
              onPressed: () {
                // Do something
                Navigator.of(context).pop();
              },
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.all(16),
              child:
                  const Text('Option 2', style: TextStyle(color: Colors.blue)),
              onPressed: () {
                // Do something
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showSimpleDialogWithOptionsNavigatorDivider(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('SimpleDialog Title'),
          children: <Widget>[
            SimpleDialogOption(
              child: const Text('Option 1'),
              onPressed: () {
                // Do something
                Navigator.of(context).pop();
              },
            ),
            const Divider(),
            SimpleDialogOption(
              child: const Text('Option 2'),
              onPressed: () {
                // Do something
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

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
            TextButton(
                onPressed: () {
                  _showSimpleDialog(context);
                },
                child: const Text("Show SimpleDialog")),
            TextButton(
                onPressed: () {
                  _showSimpleDialogWithOptions(context);
                },
                child: const Text("Show SimpleDialogWithOptions")),
            TextButton(
                onPressed: () {
                  _showSimpleDialogWithOptionsNavigator(context);
                },
                child: const Text("Show SimpleDialogWithOptionsNavigator")),
            TextButton(
                onPressed: () {
                  _showSimpleDialogWithOptionsNavigatorDivider(context);
                },
                child: const Text("Show SimpleDialogWithOptionsDivider")),
          ],
        ));
  }
}
