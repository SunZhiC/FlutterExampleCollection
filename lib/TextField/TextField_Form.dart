import 'package:flutter/material.dart';

class TextField_FormPage extends StatefulWidget {
  const TextField_FormPage({super.key});

  @override
  TextField_FormPageState createState() => TextField_FormPageState();
}

class TextField_FormPageState extends State<TextField_FormPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${runtimeType.toString().substring(0, runtimeType.toString().length - 9)} Example"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // 处理用户输入
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
