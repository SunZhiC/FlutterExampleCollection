import 'package:flutter/material.dart';

class ShowDatePickerPage extends StatefulWidget {
  const ShowDatePickerPage({super.key});

  @override
  ShowDatePickerPageState createState() => ShowDatePickerPageState();
}

class ShowDatePickerPageState extends State<ShowDatePickerPage> {
  void _showDatePicker1(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    ).then((pickedDate) {
      if (pickedDate != null) {
        // Do something with pickedDate
      }
    });
  }

  void _showDatePicker2(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      initialDatePickerMode: DatePickerMode.year, // 或 DatePickerMode.year
    ).then((pickedDate) {
      if (pickedDate != null) {
        // Do something with pickedDate
      }
    });
  }

  void _showDatePicker3(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      selectableDayPredicate: (DateTime date) {
        // 禁用星期天
        if (date.weekday == DateTime.sunday) {
          return false;
        }
        return true;
      },
    ).then((pickedDate) {
      if (pickedDate != null) {
        // Do something with pickedDate
      }
    });
  }

  void _showDatePicker4(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.purple, // Header background color
            colorScheme: const ColorScheme.light(primary: Colors.purple),
            buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: child!,
        );
      },
    );
  }

  void _showDatePicker5(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
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
                  _showDatePicker1(context);
                },
                child: const Text("show datePicker 1")),
            TextButton(
                onPressed: () {
                  _showDatePicker2(context);
                },
                child: const Text("show datePicker 2")),
            TextButton(
                onPressed: () {
                  _showDatePicker3(context);
                },
                child: const Text("show datePicker 3")),
            TextButton(
                onPressed: () {
                  _showDatePicker4(context);
                },
                child: const Text("show datePicker 4")),
            TextButton(
                onPressed: () {
                  _showDatePicker5(context);
                },
                child: const Text("show datePicker 5")),
          ],
        ));
  }
}
