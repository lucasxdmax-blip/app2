import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  const MyTextfield({super.key});

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      //onChanged: (value) => _controller.text = value,
      decoration: InputDecoration(
        label: Text ("Caixa de Texto"),
        border: OutlineInputBorder(),
      ),
    );
  }
}