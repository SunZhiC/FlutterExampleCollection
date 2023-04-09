import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  const SnackBarPage({super.key});

  @override
  SnackBarPageState createState() => SnackBarPageState();
}

class SnackBarPageState extends State<SnackBarPage> {
  void _showSnackBar1(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        duration: Duration(microseconds: 500),
        content: Text('Hello, World!'),
      ),
    );
  }

  void _showSnackBar2(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        content: const Text('Hello, World!'),
        action: SnackBarAction(
          label: 'Action',
          onPressed: () {
            // Do something
          },
        ),
      ),
    );
  }

  void _showSnackBar3(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Hello, World!'),
        duration: Duration(seconds: 5),
      ),
    );
  }

  void _showSnackBar4(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Hello, World!'),
        backgroundColor: Colors.orange,
      ),
    );
  }

  void _showSnackBar5(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Hello, World!',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
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
                  _showSnackBar1(context);
                },
                child: const Text("show snack bar 1")),
            TextButton(
                onPressed: () {
                  _showSnackBar2(context);
                },
                child: const Text("show snack bar 2")),
            TextButton(
                onPressed: () {
                  _showSnackBar3(context);
                },
                child: const Text("show snack bar 3")),
            TextButton(
                onPressed: () {
                  _showSnackBar4(context);
                },
                child: const Text("show snack bar 4")),
            TextButton(
                onPressed: () {
                  _showSnackBar5(context);
                },
                child: const Text("show snack bar 5")),
          ],
        ));
  }
}
