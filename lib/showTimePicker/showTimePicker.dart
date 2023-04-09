import 'package:flutter/material.dart';

class ShowTimePickerPage extends StatefulWidget {
  const ShowTimePickerPage({super.key});

  @override
  ShowTimePickerPageState createState() => ShowTimePickerPageState();
}

class ShowTimePickerPageState extends State<ShowTimePickerPage> {
  void _showTimePicker1(BuildContext context) {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((pickedTime) {
      if (pickedTime != null) {
        // Do something with pickedTime
      }
    });
  }

  void _showTimePicker2(BuildContext context) {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dial, // 或 TimePickerEntryMode.input
    ).then((pickedTime) {
      if (pickedTime != null) {
        // Do something with pickedTime
      }
    });
  }

  void _showTimePicker3(BuildContext context) {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dial,
    ).then((pickedTime) {
      if (pickedTime != null) {
        // Do something with pickedTime
      }
    });
  }

  void _showTimePicker4(BuildContext context) {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dial,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.orange, // Header background color
              onPrimary: Colors.white, // Header text color
              onSurface: Colors.black, // Body text color
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red, // Button text color
              ),
            ),
          ),
          child: child!,
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
                  _showTimePicker1(context);
                },
                child: const Text("show datePicker 1")),
            TextButton(
                onPressed: () {
                  _showTimePicker2(context);
                },
                child: const Text("show datePicker 2")),
            TextButton(
                onPressed: () {
                  _showTimePicker3(context);
                },
                child: const Text("show datePicker 3")),
            TextButton(
                onPressed: () {
                  _showTimePicker4(context);
                },
                child: const Text("show datePicker 4")),
          ],
        ));
  }
}
