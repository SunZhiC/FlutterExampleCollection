import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({super.key});

  @override
  AlertDialogPageState createState() => AlertDialogPageState();
}

class AlertDialogPageState extends State<AlertDialogPage> {
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          title: Text('AlertDialog Title'),
          content: Text('This is a simple alert dialog.'),
        );
      },
    );
  }

  void _showAlertDialogWithActions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('This is a simple alert dialog.'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showAlertDialogWithCheckList(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return _AlertDialogWithCheckbox(
          onCheckboxChanged: (isChecked) {
            // 这里你可以获取到 isChecked 值
            debugPrint('Checkbox isChecked: $isChecked');
          },
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
                  _showAlertDialog(context);
                },
                child: const Text("Show AlertDialog")),
            TextButton(
                onPressed: () {
                  _showAlertDialogWithActions(context);
                },
                child: const Text("Show AlertDialog with actions")),
            TextButton(
                onPressed: () {
                  _showAlertDialogWithCheckList(context);
                },
                child: const Text("Show AlertDialog with actions")),
          ],
        ));
  }
}

class _AlertDialogWithCheckbox extends StatefulWidget {
  final Function(bool) onCheckboxChanged;

  const _AlertDialogWithCheckbox({required this.onCheckboxChanged});

  @override
  _AlertDialogWithCheckboxState createState() =>
      _AlertDialogWithCheckboxState();
}

class _AlertDialogWithCheckboxState extends State<_AlertDialogWithCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('AlertDialog Title'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            CheckboxListTile(
              title: const Text('Option 1'),
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
                widget.onCheckboxChanged(_isChecked);
              },
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
